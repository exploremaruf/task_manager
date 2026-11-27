import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/constant/local_storage.dart';

class UpdateProfileController extends GetxController {
  bool isLoading = false;

  void updateProfile(String firstname, String lastname, String address) async {
    isLoading = true;
    update();

    try {
      final uri = Uri.parse(AppUrl.updateprofile);
      String? token = await LocalStorage.getToken();
      final body = {
        'first_name': firstname,
        'last_name': lastname,

        'address': address,
      };

      final response = await http.put(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        Get.snackbar(
          'Profile updated successfully',
          'Your changes have been saved.',
          backgroundColor: AppColors.primary,
          colorText: Colors.white,
        );
        final responseBody = jsonDecode(response.body);
        LocalStorage.saveUserInfo(responseBody['data']);
      } else {
        Get.snackbar(
          'Error',
          'Failed to update profile',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      debugPrint('Something went wrong: $e');
    } finally {
      isLoading = false;
      update();
    }
  }
}

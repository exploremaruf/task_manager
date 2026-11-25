import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/constant/app_url.dart';
import 'package:task_manager/constant/localstorage.dart';

import '../../constant/app_colors.dart';

class ChangePasswordController extends GetxController {
  bool isloading = false;

  void changepassword(
    String oldPassword,
    String newPassword,
    String confirmPassword,
  ) async {
    isloading = true;
    update();

    try {
      final uri = Uri.parse(AppUrl.changepassword);
      String? token = await Localstorage.getToken();

      var body = {
        'old_password': oldPassword,
        'new_password': newPassword,
        'confirm_password': confirmPassword,
      };

      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      var responsebody = jsonDecode(response.body);

      if (responsebody['success'] == true) {
        Get.back();
        Get.snackbar(
          'Password updated successfully',
          'Your changes have been saved.',
          backgroundColor: AppColors.primary,
          colorText: Colors.white,
        );

        print(responsebody.toString());
      } else {
        Get.snackbar(
          'Error',
          '${responsebody['message']}',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      debugPrint('Something went wrong: $e');
    } finally {
      isloading = false;
      update();
    }
  }
}

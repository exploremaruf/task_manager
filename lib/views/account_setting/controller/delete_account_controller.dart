import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/views/auth_view/login_view.dart';

import '../../../constant/app_url.dart';
import '../../../constant/localstorage.dart';

class DeleteAccountController extends GetxController {
  bool isloading = false;

  void deleteAccount(String  password) async {
    isloading = true;
    update();

    try {
      final uri = Uri.parse(AppUrl.deleteaccount);
      String? token = await Localstorage.getToken();

      final response = await http.delete(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'password':password
        })
      );

      var responsebody = jsonDecode(response.body);

      if (responsebody['success'] == true) {
        Localstorage.deleteAll();
        Get.offAll(LoginView());
      } else {
        Get.snackbar(
          'Faild',
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

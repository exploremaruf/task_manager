import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/utils/dashboard.dart';

class OTPController extends GetxController {
  bool isloading = false;

  Future<void> verifyOtp({
    required String gmail,
    required String otp,
    required String purpose,
  }) async {
    isloading = true;
    update();

    print('Otp function called');
    try {
      var uri = Uri.parse(AppUrl.verifyRegistrationOTP);

      print('Sending request...');

      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'gmail': gmail, 'otp': otp, 'purpose': purpose}),
      );

      final responsebody = jsonDecode(response.body);

      if (responsebody['success'] == false) {
        Get.snackbar(
          'Error',
          responsebody['message'],
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      } else {
        Get.to(Dashboard());
      }

      print(response.statusCode);
    } catch (e) {
      print('Error: $e');
    } finally {
      isloading = false;
      update();
    }
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/utils/dashboard.dart';

import '../../../constant/localstorage.dart';

class OTPController extends GetxController {
  bool isloading = false;

  Future<void> verifyOtp({
    required String gmail,
    required String otp,
    required String purpose,
  }) async {
    isloading = true;
    update();

    try {
      var uri = Uri.parse(AppUrl.verifyRegistrationOTP);

      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'gmail': gmail, 'otp': otp, 'purpose': purpose}),
      );

      final responsebody = jsonDecode(response.body);

      if (responsebody['success'] == true) {
        String token = responsebody['data']['access_token'];
        Localstorage.saveToken(token);
        var userdata = responsebody['data']['user'];
        Localstorage.saveUserInfo(userdata);
        Get.to(Dashboard());
      } else {
        Get.snackbar(
          'Error',
          responsebody['message'],
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isloading = false;
      update();
    }
  }
}

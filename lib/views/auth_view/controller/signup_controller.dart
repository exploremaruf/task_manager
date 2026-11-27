import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/views/auth_view/verify_otp_view.dart';

class SignupController extends GetxController {
  bool isLoading = false;

  Future<void> signup({
    required String firstName,
    required String lastName,
    required String gmail,
    required String address,
    required String password,
  }) async {
    isLoading = true;
    update();
    debugPrint('signup function called');
    try {
      var uri = Uri.parse(AppUrl.signup);
      debugPrint('Sending request...');
      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'first_name': firstName,
          'last_name': lastName,
          'gmail': gmail,
          'address': address,
          'password': password,
        }),
      );

      final responseBody = jsonDecode(response.body);

      if (responseBody['success'] == true) {
        Get.to(VerifyOtpView(email: gmail));
      } else {
        Get.snackbar('Error', responseBody['message']);
      }
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isLoading = false;
      update();
    }
  }
}

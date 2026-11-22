import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/views/auth_view/verify_otp_view.dart';

class SignupController extends GetxController {
  bool isloading = false;

  Future<void> signup({
    required String first_name,
    required String last_name,
    required String gmail,
    required String address,
    required String password,
  }) async {
    isloading = true;
    update();
    print('signup function called');
    try {
      var uri = Uri.parse(AppUrl.signup);
      print('Sending request...');
      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'first_name': first_name,
          'last_name': last_name,
          'gmail': gmail,
          'address': address,
          'password': password,
        }),
      );

      final responsebody = jsonDecode(response.body);

      if (responsebody['success'] == true) {
        Get.to(VerifyOtpView(email: gmail));
      } else {
        Get.snackbar('Error', responsebody['message']);
      }
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isloading = false;
      update();
    }
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/constant/local_storage.dart';

import '../../../utils/dashboard.dart';

class LoginController extends GetxController {
  bool isLoading = false;

  Future<void> login({required String email, required String password}) async {
    debugPrint('Login function called');
    isLoading = true;
    update();
    try {
      var uri = Uri.parse(AppUrl.login);

      debugPrint('Sending request...');

      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'gmail': email, 'password': password}),
      );

      final responseBody = jsonDecode(response.body);

      if (responseBody['success'] == true) {
        String token = responseBody['data']['access_token'];
        debugPrint("Token: $token");
        LocalStorage.saveToken(token);

        var userdata = responseBody['data']['user'];
        debugPrint('userinfo: $userdata');
        LocalStorage.saveUserInfo(userdata);

        Get.offAll(Dashboard());
        debugPrint(token);
      } else {
        Get.snackbar(
          'Error',
          responseBody['message'],
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      debugPrint('Status Code: ${response.statusCode}');
      debugPrint('Response Body: ${response.body}');
    } catch (e) {
      debugPrint('Error: $e');
    } finally {
      isLoading = false;
      update();
    }
  }
}

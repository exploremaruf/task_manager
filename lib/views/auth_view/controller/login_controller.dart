import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';
import 'package:task_manager/constant/localstorage.dart';

import '../../../utils/dashboard.dart';

class LoginController extends GetxController {
  bool isloading = false;

  Future<void> login({required String email, required String password}) async {
    print('Login function called');
    isloading = true;
    update();
    try {
      var uri = Uri.parse(AppUrl.login);

      print('Sending request...');

      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'gmail': email, 'password': password}),
      );

      final responsebody = jsonDecode(response.body);

      if (responsebody['success'] == true) {
        String token = responsebody['data']['access_token'];
        print("Token: $token");
        Localstorage.saveToken(token);

        var userdata = responsebody['data']['user'];
        print('userinfo: $userdata');
        Localstorage.saveUserInfo(userdata);

        Get.offAll(Dashboard());
        print(token);
      } else {
        Get.snackbar(
          'Error',
          responsebody['message'],
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }

      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
    } catch (e) {
      print('Error: $e');
    } finally {
      isloading = false;
      update();
    }
  }
}

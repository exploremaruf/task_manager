import 'dart:convert';

import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart';

class LoginController {
  Future<void> login({required String email, required String password}) async {
    print('Login function called');
    try {
      var uri = Uri.parse(AppUrl.login);

      print('Sending request...');

      var response = await post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'gmail': email, 'password': password}),
      );

      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');
    } catch (e) {
      print('Error: $e');
    }
  }
}

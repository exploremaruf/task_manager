import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/constant/localstorage.dart';
import 'package:task_manager/views/auth_view/login_view.dart';

class AddTaskController extends GetxController {
  bool isloading = false;

  Future createNewTask({
    required String title,
    required String description,
  }) async {
    debugPrint('Create New Task Function Called');

    isloading = true;
    update();

    try {
      final uri = Uri.parse(AppUrl.createTask);

      String? token = await Localstorage.getToken();

      final body = {
        "title": title,
        "content": description,
        "status": "pending",
      };

      final response = await http.post(
        uri,
        headers: {
          'Authorization': 'Bearer $token',

          'content-type': 'application/json',
        },
        body: jsonEncode(body),
      );
      debugPrint('post Function Called');

      debugPrint(response.statusCode.toString());
      final responsebody = jsonDecode(response.body);
      if (responsebody['success'] == true) {
        Get.snackbar(
          'Success',
          'Task Created!',
          backgroundColor: AppColors.primary,
          colorText: Colors.white,
        );
      } else if (response.statusCode == 401) {
        Get.snackbar('Error', 'Unauthorized');
        Localstorage.deleteToken();
        Get.offAll(LoginView());
      } else {
        debugPrint(response.statusCode as String?);
        debugPrint(responsebody['message']);
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isloading = false;
      update();
    }
  }
}

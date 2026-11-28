import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager/views/home_view/model/home_model.dart';

import '../../../constant/local_storage.dart';

class TaskController extends GetxController {
  HomeModel? responseData;
  bool isLoading = false;

  Future<void> getTasks() async {
    isLoading = true;
    update();

    try {
      final uri = Uri.parse(AppUrl.getalltask);
      final token = await LocalStorage.getToken();

      final response = await http.get(
        uri,
        headers: {'Authorization': 'Bearer $token'},
      );

      debugPrint(response.statusCode.toString());
      final responseBody = jsonDecode(response.body);

      if (response.statusCode == 200) {
        responseData = HomeModel.fromJson(jsonDecode(response.body));
      } else {
        Get.snackbar(
          'Task Loading failed',
          'E: ${responseBody['message']}',
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      isLoading = false;
      update();
    }
  }
}

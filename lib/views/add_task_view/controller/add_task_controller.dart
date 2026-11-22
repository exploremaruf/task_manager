import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_url.dart';
import 'package:http/http.dart' as http;

class AddTaskController {
  Future createNewTask({
    required String title,
    required String description,
  }) async {
    debugPrint('Create New Task Function Called');

    final uri = Uri.parse(AppUrl.createTask);

    final body = {
      {"title": title, "content": description, "status": "pending"},
    };

    final response = await http.post(
      uri,
      headers: {'content-type': 'application/json'},
      body: jsonEncode(body),
    );
    debugPrint('post Function Called');

    debugPrint(response.statusCode as String?);
    final responsebody = jsonDecode(response.body);
    if (responsebody['success'] == true) {
      Get.snackbar('Success', 'Task Created!');
    } else {
      debugPrint(response.statusCode as String?);
      debugPrint(responsebody['message']);
    }
  }
}

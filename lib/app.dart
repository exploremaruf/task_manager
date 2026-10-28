import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task_manager/views/onboarding_view/onboarding_1_view/onboarding_1_view.dart';

import 'package:task_manager/views/splash_view/splash_view.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Manager',
      home: Onboarding1View(),
      debugShowCheckedModeBanner: false,
    );
  }
}

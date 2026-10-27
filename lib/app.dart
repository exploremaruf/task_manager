import 'package:flutter/material.dart';
import 'package:task_manager/views/splash_view/splash_view.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Manager',
      home: SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

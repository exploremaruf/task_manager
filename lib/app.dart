import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/views/add_task_view/add_task_view.dart';
import 'package:task_manager/views/edit_task_view/edit_task_view.dart';

import 'package:task_manager/views/task_details_view/task_details_view.dart';

import 'constant/app_colors.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Manager',
      home: EditTaskView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(inputDecorationTheme: _buildInputDecorationTheme()),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textfieldcolor,

      // Global typography config for the hint text
      hintStyle: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,

        color: AppColors.secondarytext,
      ),

      // Ensures the filled background color stays consistent across all states
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        // Adjust corner radius as needed
        borderSide:
            BorderSide.none, // Removes standard borders if you want a flat look
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
    );
  }
}

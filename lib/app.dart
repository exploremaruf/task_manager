import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/views/auth_view/signup_view.dart';
import 'package:task_manager/views/auth_view/verify_otp_view.dart';
import 'package:task_manager/views/splash_view/splash_view.dart';

import 'constant/app_colors.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Manager',
      home: SignupView(),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 350),
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
        borderSide: BorderSide(color: AppColors.primary),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.red),
      ),
    );
  }
}

// app.dart
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:task_manager/constant/app_colors.dart';

class AppOtpThemes {
  static final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,

    textStyle: const TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300),
      color: AppColors.primary,
    ),
  );

  static final focusedPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      border: Border.all(color: AppColors.primary),
    ),
  );

  static final errorPinTheme = defaultPinTheme.copyWith(
    decoration: defaultPinTheme.decoration!.copyWith(
      border: Border.all(color: Colors.red),
    ),
  );
}

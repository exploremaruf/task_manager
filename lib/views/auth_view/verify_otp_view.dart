import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/views/auth_view/set_new_password_view.dart';

import '../../utils/app_button.dart';
import '../../utils/auth_screen_des.dart';
import '../../utils/auth_screen_title.dart';

class VerifyOtpView extends StatelessWidget {
  const VerifyOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthScreenTitle(title: '6-digit code'),
                const SizedBox(height: 8),
                const AuthScreenDes(
                  des: 'Please enter the code we\'ve sent to michelle.rivera@example.com',
                ),
                const SizedBox(height: 23),
                Center(
                  child: MaterialPinField(
                    length: 6,
                    onCompleted: (pin) {
                      print('Entered PIN: $pin');
                    },
                    onChanged: (value) {
                      print('Current PIN: $value');
                    },

                    theme: MaterialPinTheme(
                      fillColor: AppColors.textfieldcolor,
                      shape: MaterialPinShape.outlined,
                      cellSize: Size(50, 55),
                      borderRadius: BorderRadius.circular(8),
                      borderWidth: 1,
                      borderColor: Colors.transparent,
                      focusedBorderWidth: 1.5,
                      focusedBorderColor: AppColors.primary,
                      focusedFillColor: Colors.green.shade50,
                      filledBorderColor: Colors.transparent,
                      filledFillColor: AppColors.textfieldcolor,
                      errorBorderColor: Colors.red,
                      errorFillColor: Colors.red.shade50,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                AppButton(
                  title: 'Send',
                  ontap: () {
                    Get.to(SetNewPasswordView());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

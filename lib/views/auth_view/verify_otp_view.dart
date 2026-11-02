import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/views/auth_view/set_new_password_view.dart';

import '../../constant/app_otp_themes.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0,),
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
                 child: Pinput(
                   length: 6,


                 ),
               ),
                const SizedBox(height: 60),
                AppButton(title: 'Send', ontap: () {
                  Get.to(SetNewPasswordView());
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/auth_screen_title.dart';
import 'package:task_manager/views/auth_view/verify_otp_view.dart';

class VerifyYourEmailView extends StatelessWidget {
  const VerifyYourEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthScreenTitle(title: 'Verify Your Email',),
              SizedBox(height: 8,),
              AuthScreenDes(des: 'We\'ll send a verification code to this email to confirm your account.'),
              SizedBox(height: 23,),
              AppInputFields(label: 'Email', hinttext: 'michelle.rivera@example.com'),
              SizedBox(height: 70,),
              AppButton(title: 'Send', ontap: (){
                Get.to(VerifyOtpView());

              })

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/auth_screen_title.dart';
import 'package:task_manager/views/auth_view/login_view.dart';
import 'package:task_manager/views/auth_view/verify_your_email_view.dart';
import 'package:task_manager/views/auth_view/widgets/signup_body_widget.dart';
import 'package:text_divider/text_divider.dart';

import '../../constant/app_colors.dart';
import '../../utils/app_button.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 96),
            child: Column(
              children: [
                SignupBodyWidget(),
                SizedBox(height: 23),
                AppButton(
                  title: 'Continue',
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyYourEmailView(),
                      ),
                    );
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

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/auth_screen_title.dart';
import 'package:task_manager/utils/onboarding_button.dart';
import 'package:text_divider/text_divider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailTEcontroller = TextEditingController();
  final TextEditingController passwordTEcontroller = TextEditingController();
  bool _isNotificationEnabled = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthScreenTitle(title: 'Welcome Back!'),
                    Gap(8),
                    AuthScreenDes(
                      des: 'Stay productive and take control of your tasks.',
                    ),
                    Gap(23),
                    AppInputFields(
                      controller: emailTEcontroller,
                      label: 'Email Address',
                      hinttext: 'Enter your email',

                    ),
                    Gap(23),
                    AppInputFields(
                      obsecure: true,
                      controller: passwordTEcontroller,
                      label: 'Password',
                      hinttext: 'Enter your password',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          // 2. Set current state
                          value: _isNotificationEnabled,
                          // 3. Update state when tapped
                          onChanged: (bool? newValue) {
                            setState(() {
                              _isNotificationEnabled = newValue ?? false;
                            });
                          },
                          activeColor: AppColors.primary,
                          side: BorderSide(
                            color: AppColors.primary,
                            width: 2
                          ),
                        ),

                        Text('Remember me',style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.semiprimarytext,
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                    Gap(23),
                    TextDivider(text: Text('OR',),thickness: 3,),
                    Gap(23),
                    Row(
                      children: [
                        Text('Don’t have an account?',style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.semiprimarytext
                        ),),
                        Gap(4),
                        Text('Sign Up',style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary
                        ),),


                      ],

                    ),
                    Gap(23),
                    AppButton(title: 'Log In', ontap: (){})

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

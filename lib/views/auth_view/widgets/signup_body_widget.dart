import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:text_divider/text_divider.dart';

import '../../../constant/app_colors.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_input_fields.dart';
import '../../../utils/auth_screen_des.dart';
import '../../../utils/auth_screen_title.dart';
import '../login_view.dart';

class SignupBodyWidget extends StatefulWidget {
  SignupBodyWidget({super.key});

  @override
  State<SignupBodyWidget> createState() => _SignupBodyWidgetState();
}

class _SignupBodyWidgetState extends State<SignupBodyWidget> {
  bool _isNotificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AuthScreenTitle(title: 'Create Your Account'),
        SizedBox(height: 8),
        AuthScreenDes(
          des: 'Join Task Manager today — organize better, work smarter, and stay in control of your day.',
        ),
        SizedBox(height: 23),
        AppInputFields(label: 'First Name', hinttext: 'e.g. Kristin'),
        SizedBox(height: 23),
        AppInputFields(label: 'Last Name', hinttext: 'e.g. Cooper'),
        SizedBox(height: 23),
        AppInputFields(
          label: 'Email Address',
          hinttext: 'e.g. kristin.cooper@example.com',
        ),
        SizedBox(height: 23),
        AppInputFields(
          label: 'Address',
          hinttext: 'e.g. 1234 Elm Street, Springfield, IL',
        ),
        SizedBox(height: 23),
        AppInputFields(label: 'PassWord', hinttext: 'Enter your password'),
        SizedBox(height: 23),
        AppInputFields(
          label: ' Confirm password',
          hinttext: 'confirm password',
        ),
        SizedBox(height: 6),
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
              side: BorderSide(color: AppColors.primary, width: 2),
            ),

            Text(
              'I agree to the Terms & Conditions and Privacy Policy.',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: AppColors.semiprimarytext,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(height: 23),
        TextDivider(text: Text('OR'), thickness: 3),
        SizedBox(height: 23),
        Row(
          children: [
            Text(
              'Already have an account?',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.semiprimarytext,
              ),
            ),
            SizedBox(width: 4),
            InkWell(
              onTap: () => Get.off(LoginView()),
              child: Text(
                'Log In',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 23),
        AppButton(title: 'Continue', ontap: () {}),
      ],
    );
  }
}

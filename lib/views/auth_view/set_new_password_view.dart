import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/dashboard.dart';

class SetNewPasswordView extends StatefulWidget {
  const SetNewPasswordView({super.key});

  @override
  State<SetNewPasswordView> createState() => _SetNewPasswordViewState();
}

class _SetNewPasswordViewState extends State<SetNewPasswordView> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: 'Set Your New Password',
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: AppColors.primarytext,
                lineheight: 1.26,
                letterSpacing: 0,
              ),
              SizedBox(height: 8),
              CustomText(
                text: 'Create a secure password to protect your account and get started seamlessly!',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.secondarytext,
              ),
              SizedBox(height: 23),
              AppInputFields(
                label: 'New Password',
                hinttext: 'Enter your password',
                obscureText: isObsecure,
                sufixicon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: Icon(
                    isObsecure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  iconSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 23),
              AppInputFields(
                label: 'New Confirm password',
                hinttext: 'Confirm your password',
                obscureText: true,
                sufixicon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: Icon(
                    isObsecure
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  iconSize: 20,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 23),
              AppButton(
                title: 'Continue ',
                ontap: () {
                  Get.offAll(Dashboard());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

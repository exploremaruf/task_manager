import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/custom_loader.dart';
import 'package:task_manager/views/change_password/change_password_controller.dart';

import '../../utils/custom_text.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final bool _isObSecure = true;

  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              backgroundColor: AppColors.textfieldcolor,

              child: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Change Password',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 19.5),
                  AppInputFields(
                    controller: oldPasswordController,
                    obscureText: _isObSecure,
                    label: 'Type Password',
                    hinttext: '',

                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter current password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 23),
                  AppInputFields(
                    controller: newPasswordController,
                    obscureText: _isObSecure,
                    label: 'New password',
                    hinttext: '',

                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter new password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 23),
                  AppInputFields(
                    controller: confirmPasswordController,
                    obscureText: _isObSecure,
                    label: 'New Confirm password',
                    hinttext: '',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please confirm password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 23),

            GetBuilder<ChangePasswordController>(
              builder: (controller) {
                return Visibility(
                  visible: !controller.isLoading,
                  replacement: Center(child: CustomLoader()),

                  child: AppButton(
                    title: 'Update',
                    ontap: () {
                      if (_formKey.currentState!.validate()) {
                        String oldPassword = oldPasswordController.text;
                        String newPassword = newPasswordController.text;
                        String confirmPassword = confirmPasswordController.text;

                        controller.changePassword(
                          oldPassword,
                          newPassword,
                          confirmPassword,
                        );
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    oldPasswordController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
  }
}

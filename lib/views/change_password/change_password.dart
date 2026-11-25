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
  bool isobsecure = true;

  final TextEditingController oldpasswordController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  final ChangePasswordController _changePasswordController = Get.put(
    ChangePasswordController(),
  );

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
                    controller: oldpasswordController,
                    obscureText: isobsecure,
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
                    controller: newpasswordController,
                    obscureText: isobsecure,
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
                    controller: confirmpasswordController,
                    obscureText: isobsecure,
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
                  visible: !controller.isloading,
                  replacement: Center(child: CustomLoader()),

                  child: AppButton(
                    title: 'Update',
                    ontap: () {
                      if (_formKey.currentState!.validate()) {
                        String oldpassword = oldpasswordController.text;
                        String newpassword = newpasswordController.text;
                        String confirmpassword = confirmpasswordController.text;

                        controller.changepassword(
                          oldpassword,
                          newpassword,
                          confirmpassword,
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
    oldpasswordController.dispose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }
}

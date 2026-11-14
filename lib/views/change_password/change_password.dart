import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/views/account_setting/account_setting.dart';

import '../../utils/custom_text.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool isobsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: GestureDetector(
            onTap:()=>Get.back(),
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
            SizedBox(height: 19.5),
            AppInputFields(
              obscureText: isobsecure,
              label: 'Type Password',
              hinttext: '',
              sufixicon: IconButton(
                onPressed: () {
                  setState(() {
                    isobsecure = !isobsecure;
                  });
                },
                icon: Icon(
                  isobsecure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
            SizedBox(height: 23),
            AppInputFields(
              obscureText: isobsecure,
              label: 'New password',
              hinttext: '',
              sufixicon: IconButton(
                onPressed: () {
                  setState(() {
                    isobsecure = !isobsecure;
                  });
                },
                icon: Icon(
                  isobsecure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
            SizedBox(height: 23),
            AppInputFields(
              obscureText: isobsecure,
              label: 'New Confirm password',
              hinttext: '',
              sufixicon: IconButton(
                onPressed: () {
                  setState(() {
                    isobsecure = !isobsecure;
                  });
                },
                icon: Icon(
                  isobsecure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
              ),
            ),
            SizedBox(height: 23),
            AppButton(title: 'Update', ontap: () {
              Get.off(AccountSetting());
            }),
          ],
        ),
      ),
    );
  }
}

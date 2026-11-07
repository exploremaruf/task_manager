import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/views/account_setting/widgets/account_setting_tile.dart';
import 'package:task_manager/views/change_password/change_password.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class AccountSetting extends StatelessWidget {
  const AccountSetting({super.key});

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
          text: 'Account Setting',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),
        actions: [
          Transform.translate(
            offset: Offset(0, 0),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.textfieldcolor,
              child: Icon(
                Icons.border_color_outlined,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20),
            AccountSettingTile(
              icon: Icons.lock_outline,
              title: 'Change Password',
              itemcolor: AppColors.primary,
              ontap: () {
                Get.to(ChangePassword());
              },
              titlecolor: AppColors.primarytext,
            ),
            AccountSettingTile(
              icon: Icons.person_remove_outlined,
              title: 'Delete Account',
              itemcolor: Colors.red,
              ontap: () {},
              titlecolor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/views/edit_profile_view/edit_profile_view.dart';
import 'package:task_manager/views/myprofile_view/widgets/myprofile_header.dart';
import 'package:task_manager/views/myprofile_view/widgets/myprofile_item_tile.dart';

class MyprofileView extends StatelessWidget {
  const MyprofileView({super.key});

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
          text: 'My Profile',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primary,
        ),
        actions: [
          Transform.translate(
            offset: Offset(0, 0),
            child: GestureDetector(
              onTap: ()=>Get.to(EditProfileView()),
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
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 20),
              MyprofileHeader(),
              SizedBox(height: 16),
              MyprofileItemTile(
                icon: Icons.account_circle_outlined,
                title: 'Mojahid Islam',
              ),
              MyprofileItemTile(
                icon: Icons.alternate_email_outlined,
                title: 'Samaltman@gmail.com',
              ),
              MyprofileItemTile(
                icon: Icons.pin_drop_outlined,
                title: '1234 Elm Street, Springfield, IL',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

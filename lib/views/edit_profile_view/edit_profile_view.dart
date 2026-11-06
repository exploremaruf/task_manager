import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/views/edit_profile_view/widgets/edit_profile_bodyfiled_widget.dart';
import 'package:task_manager/views/edit_profile_view/widgets/edit_profile_header_widget.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: GestureDetector(
            onTap: ()=>Get.back(),
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
          text: 'Edit Profile ',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 20),
                EditProfileHeaderWidget(),
                SizedBox(height: 23),
                EditProfileBodyfiledWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

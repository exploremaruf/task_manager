import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/task_details_template.dart';

class TaskDetailsView extends StatelessWidget {
  const TaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: InkWell(
            onTap: ()=>Get.back(),
            child: CircleAvatar(
              backgroundColor: AppColors.textfieldcolor,
              child: Icon(Icons.arrow_back_ios, color: AppColors.primary),
            ),
          ),
        ),

        title: CustomText(
          text: 'Tasks Details',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(height: 23),
          TaskDetailsTemplate(
            title: 'Design Landing Page Header',
            description: 'Create a clean, responsive header section for the landing page. Include logo, navigation menu, search bar, and a primary call-to-action button. Ensure mobile responsiveness and use the brand green',
          ),
        ],
      ),
    );
  }
}

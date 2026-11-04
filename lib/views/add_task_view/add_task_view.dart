import 'package:flutter/material.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: CircleAvatar(
            backgroundColor: AppColors.textfieldcolor,
            child: Icon(Icons.arrow_back_ios, color: AppColors.primary),
          ),
        ),

        title: CustomText(
          text: 'Add Task ',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 23),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppInputFields(
                    label: 'Task Title',
                    hinttext: 'e.g. Design Landing Page Header',
                  ),
                  SizedBox(height: 23),
                  AppInputFields(
                    label: 'Description',
                    hinttext: 'e.g. Include logo, navigation, and CTA button with brand color',
                    maxlines: null,
                    minlines: 3,
                  ),
                  SizedBox(height: 23,),
                  AppButton(title: 'Save Task', ontap: (){})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';

import '../views/task_details_view/task_details_view.dart';

class TaskItem extends StatelessWidget {
  final String title;
  final String des;

  TaskItem({super.key, required this.title, required this.des});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: () {
          Get.to(TaskDetailsView());
          print('working, tap detected!');
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.taskitembackgroundimg),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppAssets.taskitemicon, height: 26, width: 26),
                SizedBox(height: 16),
                CustomText(
                  text: title,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primarytext,
                ),
                SizedBox(height: 10),
                CustomText(
                  text: des,
                  fontSize: 12,
                  lineheight: 0,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

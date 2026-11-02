import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
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
              text: 'Design Landing Page Header',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primarytext,
            ),
            SizedBox(height: 10),
            CustomText(
              text: 'Create a clean, responsive header section with logo, navigation links, and a clear call-to-action button.',
              fontSize: 12,
              lineheight: 0,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}

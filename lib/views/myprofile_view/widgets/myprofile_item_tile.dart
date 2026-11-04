import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';

class MyprofileItemTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const MyprofileItemTile({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        leading: Icon(icon, size: 24, color: AppColors.primary),

        title: Transform.translate(
          offset: Offset(-8, 0),
          child: Row(
            children: [
              Container(width: 1, height: 18, color: AppColors.primary),
              SizedBox(width: 10),
              CustomText(
                text: title,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

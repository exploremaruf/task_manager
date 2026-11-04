import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';

class ProfileItemTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback ontap;

  const ProfileItemTile({
    super.key,
    required this.icon,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: ListTile(
          leading: Icon(icon, color: AppColors.primary),
          title: CustomText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.primarytext,
          ),
          trailing: Icon(Icons.arrow_forward_ios, color: AppColors.primary),
        ),
      ),
    );
  }
}

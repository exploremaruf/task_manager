import 'package:flutter/material.dart';
import 'package:task_manager/utils/custom_text.dart';

class AccountSettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color titleColor;
  final Color itemColor;

  final VoidCallback onTap;

  const AccountSettingTile({
    super.key,
    required this.icon,
    required this.title,
    required this.titleColor,
    required this.itemColor,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: ListTile(
          leading: Icon(icon, size: 20, color: itemColor),
          title: CustomText(
            text: title,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: titleColor,
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 20, color: itemColor),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager/utils/custom_text.dart';

class AccountSettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color titlecolor;
  final Color itemcolor;

  final VoidCallback ontap;

  const AccountSettingTile({
    super.key,
    required this.icon,
    required this.title,
    required this.titlecolor,
    required this.itemcolor,
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
          leading: Icon(icon, size: 20, color: itemcolor),
          title: CustomText(
            text: title,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: titlecolor,
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 20, color: itemcolor),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager/utils/custom_text.dart';

class BodyTempWidget extends StatelessWidget {
  final String title;
  final String description;

  const BodyTempWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: title, fontSize: 14, fontWeight: FontWeight.w600),
        SizedBox(height: 5),
        CustomText(
          text: description,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          lineheight: 1.71,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'app_colors.dart';

class PageDot extends StatelessWidget {
  const PageDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 30,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        const Gap(10),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.inactiveindecator,
            shape: BoxShape.circle,
          ),
        ),
        const Gap(10),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.inactiveindecator,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

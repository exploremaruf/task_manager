import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';

import '../../auth_view/login_view.dart';

class SkipTap extends StatelessWidget {
  const SkipTap({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.offAll(LoginView(),transition: Transition.cupertino);
      },
      child: CustomText(
        text: 'Skip',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.primary,
      ),
    );
  }
}

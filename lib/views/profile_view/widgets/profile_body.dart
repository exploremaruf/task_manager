import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/views/account_setting/account_setting.dart';
import 'package:task_manager/views/faq_view/help_view.dart';
import 'package:task_manager/views/myprofile_view/myprofile_view.dart';
import 'package:task_manager/views/privacy_policy_view/privacy_policy_view.dart';
import 'package:task_manager/views/profile_view/widgets/profile_item_tile.dart';
import 'package:task_manager/views/terms_and_condition_view/terms_and_condition_view.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileItemTile(
          icon: Icons.account_circle_outlined,
          title: 'My Profile',
          ontap: () {
            Get.to(MyprofileView());
          },
        ),
        ProfileItemTile(
          icon: Icons.settings_outlined,
          title: 'Account Setting',
          ontap: () {
            Get.to(AccountSetting());
          },
        ),
        SizedBox(height: 10),
        CustomText(
          text: 'More',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: AppColors.primarytext,
        ),
        SizedBox(height: 10),
        ProfileItemTile(
          icon: Icons.article,
          title: 'Terms & Condition',
          ontap: () {
            Get.to(TermsAndConditionView());
          },
        ),
        ProfileItemTile(
          icon: Icons.library_books_outlined,
          title: 'Privacy policy',
          ontap: () {
            Get.to(PrivacyPolicyView());
          },
        ),
        ProfileItemTile(
          icon: Icons.help_outline_outlined,
          title: 'Help/Support',
          ontap: () {
            Get.to(HelpView());
          },
        ),
        GestureDetector(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.white,
            child: ListTile(
              leading: Transform.flip(
                flipX: true,
                child: Icon(Icons.logout_rounded, color: AppColors.primary),
              ),
              title: CustomText(
                text: 'Log Out',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

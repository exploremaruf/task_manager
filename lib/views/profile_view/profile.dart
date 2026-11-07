import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/views/profile_view/widgets/profile_body.dart';
import 'package:task_manager/views/profile_view/widgets/profile_header.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 53,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ProfileBody(),
            )

          ],
        ),
      ),
    );
  }
}

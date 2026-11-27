import 'package:flutter/material.dart';
import 'package:task_manager/views/auth_view/widgets/signup_body_widget.dart';

import '../../constant/app_colors.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 96),
            child: Column(children: [SignupBodyWidget()]),
          ),
        ),
      ),
    );
  }
}

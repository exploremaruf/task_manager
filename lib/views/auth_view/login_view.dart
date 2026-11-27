import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/auth_screen_title.dart';
import 'package:task_manager/utils/custom_loader.dart';
import 'package:task_manager/views/auth_view/controller/login_controller.dart';
import 'package:task_manager/views/auth_view/signup_view.dart';
import 'package:text_divider/text_divider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailTEController = TextEditingController();
  final TextEditingController passwordTEController = TextEditingController();
  bool _isRememberd = false;
  final bool _isPasswordHidden = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AuthScreenTitle(title: 'Welcome Back!'),
                  Gap(8),
                  AuthScreenDes(
                    des: 'Stay productive and take control of your tasks.',
                  ),
                  Gap(23),
                  Form(
                    key: _formKey,

                    child: Column(
                      children: [
                        AppInputFields(
                          controller: emailTEController,
                          label: 'Email Address',
                          hinttext: 'Enter your email',
                        ),
                        Gap(23),
                        AppInputFields(
                          obscureText: _isPasswordHidden,

                          controller: passwordTEController,
                          label: 'Password',
                          hinttext: 'Enter your password',
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        // 2. Set current state
                        value: _isRememberd,
                        // 3. Update state when tapped
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isRememberd = newValue ?? false;
                          });
                        },
                        activeColor: AppColors.primary,
                        side: BorderSide(color: AppColors.primary, width: 2),
                      ),

                      Text(
                        'Remember me',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: AppColors.semiprimarytext,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Gap(23),
                  TextDivider(text: Text('OR'), thickness: 3),
                  Gap(23),
                  Row(
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.semiprimarytext,
                        ),
                      ),
                      Gap(4),
                      GestureDetector(
                        onTap: () => Get.to(SignupView()),
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(23),

                  GetBuilder<LoginController>(
                    builder: (controller) {
                      return Visibility(
                        visible: !controller.isLoading,
                        replacement: Center(child: CustomLoader()),
                        child: AppButton(
                          title: 'Log In',
                          ontap: () {
                            if (_formKey.currentState!.validate()) {
                              String email = emailTEController.text.trim();
                              String password = passwordTEController.text
                                  .trim();

                              controller.login(
                                email: email,
                                password: password,
                              );
                            }
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailTEController.dispose();
    passwordTEController.dispose();
    super.dispose();
  }
}

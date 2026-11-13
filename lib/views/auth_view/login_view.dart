import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/auth_screen_title.dart';
import 'package:task_manager/utils/dashboard.dart';
import 'package:task_manager/views/auth_view/controller/login_controller.dart';
import 'package:task_manager/views/auth_view/signup_view.dart';
import 'package:text_divider/text_divider.dart';
import 'package:http/http.dart' as http;

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailTEcontroller = TextEditingController();
  final TextEditingController passwordTEcontroller = TextEditingController();
  bool _isRememberd = false;
  bool _isPasswordhidden = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final LoginController loginController = LoginController();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
                          controller: emailTEcontroller,
                          label: 'Email Address',
                          hinttext: 'Enter your email',
                        ),
                        Gap(23),
                        AppInputFields(
                          obsecure: _isPasswordhidden,
                          sufixicon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isPasswordhidden = !_isPasswordhidden;
                              });
                            },
                            icon: Icon(
                              _isPasswordhidden
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                            ),
                            color: Colors.grey,
                            iconSize: 20,
                          ),
                          controller: passwordTEcontroller,
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
                  Visibility(
                    visible: !isloading,
                    replacement: Center(child: CircularProgressIndicator()),
                    child: AppButton(
                      title: 'Log In',
                      ontap: () async {
                        if (_formKey.currentState!.validate()) {
                          isloading = true;
                          setState(() {});
                          await loginController.login(
                            email: emailTEcontroller.text.trim(),
                            password: passwordTEcontroller.text.trim(),
                          );
                          isloading = false;
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Future getData() async {
  //   String email = emailTEcontroller.text.trim().toString();
  //   String password = passwordTEcontroller.text.trim().toString();
  //
  //   final url = Uri.parse('https://taskmanagment.nahid.cc/api/v1//auth/signin');
  //
  //   final response = await http.post(
  //     url,
  //     headers: <String, String>{'Content-Type': 'application/json'},
  //     body: jsonEncode(<String, dynamic>{'gmail': email, 'password': password}),
  //   );
  //
  //   print(response.statusCode);
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    emailTEcontroller.dispose();
    passwordTEcontroller.dispose();
    super.dispose();
  }
}

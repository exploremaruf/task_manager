import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_loader.dart';
import 'package:task_manager/views/auth_view/controller/otp_controller.dart';
import 'package:task_manager/views/auth_view/controller/signup_controller.dart';
import 'package:task_manager/views/auth_view/set_new_password_view.dart';

import '../../utils/app_button.dart';
import '../../utils/auth_screen_des.dart';
import '../../utils/auth_screen_title.dart';

class VerifyOtpView extends StatefulWidget {
  final String email;

  const VerifyOtpView({super.key, required this.email});

  @override
  State<VerifyOtpView> createState() => _VerifyOtpViewState();
}

class _VerifyOtpViewState extends State<VerifyOtpView> {
  final PinInputController pinInputController = PinInputController();
  final OTPController otpController = Get.put(OTPController());

  @override
  void dispose() {
    pinInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AuthScreenTitle(title: '6-digit code'),
                const SizedBox(height: 8),
                AuthScreenDes(
                  des: 'Please enter the code we\'ve sent to ${widget.email}',
                ),
                const SizedBox(height: 23),
                Center(
                  child: MaterialPinFormField(
                    pinController: pinInputController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return 'Please enter all 6 digits';
                      }
                    },
                    length: 6,
                    onCompleted: (pin) {
                      print('Entered PIN: $pin');
                    },
                    onChanged: (value) {
                      print('Current PIN: $value');
                    },

                    theme: MaterialPinTheme(
                      fillColor: AppColors.textfieldcolor,
                      shape: MaterialPinShape.outlined,
                      cellSize: Size(50, 55),
                      borderRadius: BorderRadius.circular(8),
                      borderWidth: 1,
                      borderColor: Colors.transparent,
                      focusedBorderWidth: 1.5,
                      focusedBorderColor: AppColors.primary,
                      focusedFillColor: Colors.green.shade50,
                      filledBorderColor: Colors.transparent,
                      filledFillColor: AppColors.textfieldcolor,
                      errorBorderColor: Colors.red,
                      errorFillColor: Colors.red.shade50,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                GetBuilder<OTPController>(
                  builder: (controller) {
                    return Visibility(
                      visible: !controller.isloading,
                      replacement: Center(child: CustomLoader()),
                      child: AppButton(
                        title: 'Send',
                        ontap: () {
                          if (pinInputController.text.isEmpty) {
                            Get.snackbar(
                              'Warning',
                              'Please enter OTP',
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                          } else {
                            String gmail = widget.email;
                            String otp = pinInputController.text;
                            String purpose = 'VERIFICATION';
                            otpController.verifyOtp(
                              gmail: gmail,
                              otp: otp,
                              purpose: purpose,
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/utils/auth_screen_des.dart';
import 'package:task_manager/utils/custom_loader.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';
import 'controller/delete_account_controller.dart';

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  final DeleteAccountController _deleteAccountController = Get.put(
    DeleteAccountController(),
  );

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordTEcontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _passwordTEcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: CircleAvatar(
              backgroundColor: AppColors.textfieldcolor,

              child: Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        ),
        title: CustomText(
          text: 'Delete Account',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 32,
          bottom: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Confirm Account Deletion',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primarytext,
                ),
              ),
              SizedBox(height: 10),
              AuthScreenDes(
                des: 'For your security, please enter your password to confirm account deletion.',
              ),
              SizedBox(height: 23),
              Form(
                key: _formKey,
                child: AppInputFields(
                  controller: _passwordTEcontroller,
                  label: 'Enter Your Password',
                  hinttext: '',
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 23),

              GetBuilder<DeleteAccountController>(
                builder: (controller) {
                  return Visibility(
                    visible: !controller.isloading,
                    replacement: Center(child: CustomLoader()),
                    child: AppButton(
                      title: 'Permanently Delete Account',
                      ontap: () {
                        if (_formKey.currentState!.validate()) {
                          String password = _passwordTEcontroller.text;

                          controller.deleteAccount(password);
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
    );
  }
}

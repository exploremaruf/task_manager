import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';

class EditProfileBodyfiledWidget extends StatelessWidget {
  const EditProfileBodyfiledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInputFields(label: 'First Name', hinttext: 'e.g. Kristin '),
        SizedBox(height: 23),
        AppInputFields(label: 'Last Name', hinttext: 'e.g. Cooper'),
        SizedBox(height: 23),
        AppInputFields(
          label: 'Email Address',
          hinttext: 'e.g. kristin.cooper@example.com',
        ),
        SizedBox(height: 23),
        AppInputFields(

          label: 'Address',
          hinttext: 'e.g. 1234 Elm Street, Springfield, IL',
        ),
        SizedBox(height: 23),
        AppButton(title: 'Update', ontap: () {
          Get.back();
          Get.snackbar(
            'Success',
            'Information Updated!',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.black.withOpacity(0.5),
            colorText: Colors.white,
            borderRadius: 10,
            margin: const EdgeInsets.all(15),
            duration: const Duration(seconds: 2),
            isDismissible: true,
            forwardAnimationCurve: Curves.easeOutBack,
          );

        }),
      ],
    );
  }
}

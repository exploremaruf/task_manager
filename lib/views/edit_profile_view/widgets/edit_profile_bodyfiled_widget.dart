import 'package:flutter/material.dart';
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
        AppButton(title: 'Update', ontap: () {}),
      ],
    );
  }
}

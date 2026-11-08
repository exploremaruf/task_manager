import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/utils/app_button.dart';
import 'package:task_manager/utils/app_input_fields.dart';
import 'package:task_manager/views/add_task_view/widgets/success_toaster.dart';
import 'package:task_manager/views/home_view/model/task_model.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class AddTaskView extends StatefulWidget {
  const AddTaskView({super.key});

  @override
  State<AddTaskView> createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  final TextEditingController titleTEController = TextEditingController();
  final TextEditingController desTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        // leading: Transform.translate(
        //   offset: Offset(16, 0),
        //   child: GestureDetector(
        //     onTap: ()=>Get.back(),
        //     child: CircleAvatar(
        //       backgroundColor: AppColors.textfieldcolor,
        //       child: Icon(Icons.arrow_back_ios, color: AppColors.primary),
        //     ),
        //   ),
        // ),

        title: CustomText(
          text: 'Add Task ',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 23),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppInputFields(
                    controller: titleTEController,
                    label: 'Task Title',
                    hinttext: 'e.g. Design Landing Page Header',
                  ),
                  SizedBox(height: 23),
                  AppInputFields(
                    controller: desTEController,
                    label: 'Description',
                    hinttext: 'e.g. Include logo, navigation, and CTA button with brand color',
                    maxlines: null,
                    minlines: 3,
                  ),
                  SizedBox(height: 23),
                  AppButton(
                    title: 'Save Task',
                    ontap: () {
                      setState(() {
                        TaskModel.tasklist.add({
                          'title': titleTEController.text.trim().toString(),
                          'description': desTEController.text.trim().toString(),
                        });
                      });

                      return showToast();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleTEController.dispose();
    desTEController.dispose();
  }
}

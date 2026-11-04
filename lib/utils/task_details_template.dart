import 'package:flutter/material.dart';
import 'package:task_manager/utils/dialog_template.dart';

import '../constant/app_colors.dart';
import 'custom_text.dart';

class TaskDetailsTemplate extends StatelessWidget {
  final String title;
  final String description;

  const TaskDetailsTemplate({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.list_alt_outlined,
                                  color: AppColors.primary,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Task Title',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        lineheight: 1.14,
                                        color: AppColors.primarytext,
                                      ),
                                      SizedBox(height: 8),
                                      CustomText(
                                        text: title,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        lineheight: 1,
                                        color: AppColors.secondarytext,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),
                            Divider(thickness: 1, color: AppColors.primary),
                            SizedBox(height: 14),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.list_alt_outlined,
                                  color: AppColors.primary,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Task Description',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        lineheight: 1.14,
                                        color: AppColors.primarytext,
                                      ),
                                      SizedBox(height: 8),
                                      CustomText(
                                        text: description,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        lineheight: 1.5,
                                        color: AppColors.secondarytext,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),
                            Divider(thickness: 1, color: AppColors.primary),
                            SizedBox(height: 14),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return const WarningDialog(
                                          title: 'Success',
                                          message: 'Task has been deleted!',
                                        );
                                      },
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.red.shade50,
                                    side: BorderSide(
                                      color: Colors.red,
                                      width: 1.5,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(114, 36),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.delete_outline,
                                          color: Colors.red,
                                        ),
                                        SizedBox(width: 4),
                                        CustomText(
                                          text: 'Delete Task',
                                          color: AppColors.primarytext,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: Colors.green.shade50,
                                    side: BorderSide(
                                      color: Colors.green,
                                      width: 1.5,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(114, 36),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.edit_square,
                                          color: AppColors.primary,
                                        ),
                                        SizedBox(width: 4),
                                        CustomText(
                                          text: 'Edit Task',
                                          color: AppColors.primarytext,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

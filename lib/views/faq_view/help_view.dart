import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_easy_faq/flutter_easy_faq.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constant/app_assets.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: Transform.translate(
          offset: Offset(16, 0),
          child: CircleAvatar(
            backgroundColor: AppColors.textfieldcolor,

            child: Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.primary,
              size: 20,
            ),
          ),
        ),
        title: CustomText(
          text: 'Help/Support',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomText(
                text: 'FAQs',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              SizedBox(height: 16),
              EasyFaq(
                question: 'How do I create a new task?',
                answer: 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".',
                collapsedIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.primary,
                ),
                expandedIcon: Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(14),
                borderRadius: BorderRadius.circular(5),
                questionTextStyle: GoogleFonts.poppins(),
                anserTextStyle: GoogleFonts.poppins(),
              ),
              SizedBox(height: 16),
              EasyFaq(
                question: 'How can I view task details?',
                answer: 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".',
                collapsedIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.primary,
                ),
                expandedIcon: Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(14),
                borderRadius: BorderRadius.circular(5),
                questionTextStyle: GoogleFonts.poppins(),
                anserTextStyle: GoogleFonts.poppins(),
              ),
              SizedBox(height: 16),
              EasyFaq(
                question: 'Can I mark a task as favorite or important?',
                answer: 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".',
                collapsedIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.primary,
                ),
                expandedIcon: Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(14),
                borderRadius: BorderRadius.circular(5),
                questionTextStyle: GoogleFonts.poppins(),
                anserTextStyle: GoogleFonts.poppins(),
              ),
              SizedBox(height: 16),
              EasyFaq(
                question: 'How do I edit or delete a task?',
                answer: 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".',
                collapsedIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.primary,
                ),
                expandedIcon: Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(14),
                borderRadius: BorderRadius.circular(5),
                questionTextStyle: GoogleFonts.poppins(),
                anserTextStyle: GoogleFonts.poppins(),
              ),
              SizedBox(height: 16),
              EasyFaq(
                question: 'Is my data secure?',
                answer: 'Tap the "Add Task" button on the navigation bar. Fill in the task title, due date, priority, and other details — then tap "Save".',
                collapsedIcon: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: AppColors.primary,
                ),
                expandedIcon: Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: AppColors.primary,
                  ),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(14),
                borderRadius: BorderRadius.circular(5),
                questionTextStyle: GoogleFonts.poppins(),
                anserTextStyle: GoogleFonts.poppins(),
              ),
              SizedBox(height: 16),
              CustomText(
                text: 'Need More Help?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppAssets.needhelpicon,
                        height: 38,
                        width: 38,
                      ),
                      SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Mail Us: (support@taskmanagerapp.com)',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox(height: 4),
                            CustomText(
                              text: 'Our help desk is available 24/7 to support your workflow.',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_manager/views/terms_and_condition_view/widgets/body_temp_widget.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class TermsAndConditionView extends StatelessWidget {
  const TermsAndConditionView({super.key});

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
          text: 'Terms & Condition',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.primarytext,
        ),

        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              BodyTempWidget(
                title: 'Terms & Conditions',
                description: 'Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions:',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '1. Use of the App',
                description: 'This app is designed to help users create, manage, and track personal or professional tasks efficiently. By using the app, you agree to use it responsibly and only for lawful purposes.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '2. Accuracy of Information2. Accuracy of Information',
                description: 'All tasks, notes, and other information entered by the user are stored securely. While we strive to maintain accurate task management functionality, the app is not responsible for missed deadlines, incorrect entries, or user-generated errors.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '3. User Responsibility',
                description: 'Users are solely responsible for managing their tasks, reminders, and any personal or professional outcomes related to the completion or non-completion of tasks created within the app.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '4. Data Collection',
                description: 'We respect your privacy. The Task Manager App may collect limited personal data (such as name, email, and usage patterns) solely for improving user experience. No data is shared with third parties without user consent.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '5. Limitation of Liability',
                description: 'We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use of the app. The app is a productivity tool and should be used at your discretion.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '6. Third-Party Links',
                description: 'If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their data policies or service availability. Use of such services is subject to their respective terms.',
              ),
              SizedBox(height: 32),
              BodyTempWidget(
                title: '7. Changes to Terms',
                description: 'We reserve the right to update these Terms & Conditions at any time. Continued use of the app following any changes will constitute your acceptance of those revised terms.',
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

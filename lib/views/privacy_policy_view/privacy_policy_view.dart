import 'package:flutter/material.dart';
import 'package:task_manager/views/terms_and_condition_view/widgets/body_temp_widget.dart';

import '../../constant/app_colors.dart';
import '../../utils/custom_text.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

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
          text: 'Privacy Policy',
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
                title: 'Privacy Policy – Task Manager App',
                description: 'Your privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '1. Information Collection',
                description: 'The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '2. Local Storage',
                description: 'Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app\'s features like scheduling, notifications, and user customization.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '3. No Tracking',
                description: 'We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '4. Static Data Display',
                description: 'If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '5. Third-Party Services',
                description: 'We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '6. Data Security',
                description: 'You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: '7. Policy Updates',
                description: 'This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.',
              ),

              SizedBox(height: 32),

              BodyTempWidget(
                title: 'Contact Us',
                description: 'If you have any questions or concerns regarding privacy, please contact us at support@taskmanagerapp.com.',
              ),

              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/views/auth_view/login_view.dart';

import '../../../constant/app_assets.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/page_dot.dart';
import '../../../utils/oboarding_description.dart';
import '../../../utils/oboarding_title.dart';
import '../../../utils/onboarding_button.dart';

import '../onboarding_2_view/onboarding_2_view.dart';

class Onboarding3View extends StatelessWidget {
  const Onboarding3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(Onboarding2View());

          },
          icon: Icon(Icons.keyboard_backspace, size: 24),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                'Skip',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 56, left: 16, right: 16),

          child: SizedBox(


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset(
                  AppAssets.onboardingscreen3banner,
                  height: 280,
                  width: 280,
                ),

                Gap(43),
                Center(
                  child: OboardingTitle(
                    title: 'Focus on What Matters Most',
                  ),
                ),
                Gap(10),
                Center(
                  child: OboardingDes(
                    des: 'Set priorities, add deadlines, and sort tasks by importance so you can tackle what truly moves you forward.',
                  ),
                ),
                Gap(43),
                PageDot(currentindex: 2),
                Gap(100),
                OnboardingButton(
                  title: 'Next',
                  iconData: Icons.navigate_next,
                  ontap: () {
                        Get.to(LoginView());
                  },
                ),
                Gap(48)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

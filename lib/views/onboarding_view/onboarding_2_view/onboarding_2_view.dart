import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/views/onboarding_view/onboarding_1_view/onboarding_1_view.dart';
import 'package:task_manager/views/onboarding_view/onboarding_3_view/onboarding_3_view.dart';

import '../../../constant/app_assets.dart';
import '../../../constant/app_colors.dart';
import '../../../constant/page_dot.dart';
import '../../../utils/oboarding_description.dart';
import '../../../utils/oboarding_title.dart';
import '../../../utils/onboarding_button.dart';
import '../widgets/skip_tap.dart';

class Onboarding2View extends StatelessWidget {
  const Onboarding2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.offAll(Onboarding1View(),transition: Transition.cupertino);

          },
          icon: Icon(Icons.keyboard_backspace, size: 24),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SkipTap(),
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
                  AppAssets.onboardingscreen2banner,
                  height: 280,
                  width: 280,
                ),

                Gap(43),
                Center(
                  child: OboardingTitle(
                    title: 'Visualize Progress, Stay on Track',
                  ),
                ),
                Gap(10),
                Center(
                  child: OboardingDes(
                    des: 'Monitor completed tasks, ongoing projects, and upcoming deadlines — all in a clear, visual format.',
                  ),
                ),
                Gap(43),
                PageDot(currentindex: 1),
                Gap(100),
                OnboardingButton(
                  title: 'Next',
                  iconData: Icons.navigate_next,
                  ontap: () {
                   Get.to(Onboarding3View(),transition: Transition.cupertino);
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

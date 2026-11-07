import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/page_dot.dart';
import 'package:task_manager/utils/onboarding_button.dart';
import 'package:task_manager/views/onboarding_view/onboarding_2_view/onboarding_2_view.dart';

import '../../../utils/oboarding_description.dart';
import '../../../utils/oboarding_title.dart';
import '../widgets/skip_tap.dart';

class Onboarding1View extends StatelessWidget {
  const Onboarding1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,

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
                  AppAssets.onboardingscreen1banner,
                  height: 280,
                  width: 280,
                ),

                Gap(43),
                Center(
                  child: OboardingTitle(
                    title: 'Manage Everything in One Place',
                  ),
                ),
                Gap(10),
                Center(
                  child: OboardingDes(
                    des: 'Create, categorize, and keep track of all your personal and work tasks effortlessly — right from your dashboard.',
                  ),
                ),
                Gap(43),
                PageDot(currentindex: 0),
                Gap(100),
                OnboardingButton(
                  title: 'Next',
                  iconData: Icons.navigate_next,
                  ontap: () {
                    Get.to(Onboarding2View(), transition: Transition.cupertino);
                  },
                ),
                Gap(48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

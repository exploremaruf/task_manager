import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

import '../constant/app_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MotionTabBar(
      labels: const ['Home', 'Add Task', 'Profile'],

      icons: const [Icons.home_outlined, Icons.add_outlined, Icons.person_2_outlined],

      initialSelectedTab: 'Home',
      useSafeArea: true,
      labelAlwaysVisible: true,

      tabBarColor: Colors.white,
      tabSelectedColor: AppColors.primary,
      tabIconColor: AppColors.primarytext,
      tabIconSelectedColor: Colors.white,

      tabIconSize: 24,
      tabIconSelectedSize: 28,
      tabBarHeight: 65,
      tabSize: 50,

      textStyle: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.primarytext,
      ),

      onTabItemSelected: (int value) {
        setState(() {



        });
      },
    );
  }
}

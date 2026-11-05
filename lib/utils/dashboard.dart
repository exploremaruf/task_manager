import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'package:task_manager/views/add_task_view/add_task_view.dart';
import 'package:task_manager/views/profile_view/profile.dart';

import '../constant/app_colors.dart';
import '../views/home_view/home_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  late MotionTabBarController _tabBarController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabBarController = MotionTabBarController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabBarController,

        children: [HomeView(), AddTaskView(), Profile()],
      ),
      bottomNavigationBar: MotionTabBar(
        controller: _tabBarController,
        initialSelectedTab: 'Home',
        labels: ['Home', 'Add Task', 'Profile'],

        icons: [
          Icons.home_outlined,
          Icons.add_outlined,
          Icons.account_circle_outlined,
        ],
        onTabItemSelected: (int index) {
          _tabBarController.index = index;
        },

        labelAlwaysVisible: true,
        tabIconSelectedColor: Colors.white,
        tabSelectedColor: AppColors.primary,
      ),
    );
  }
}

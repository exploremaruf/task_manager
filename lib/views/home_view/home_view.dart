import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/dashboard.dart';
import 'package:task_manager/utils/task_item.dart';
import 'package:task_manager/views/home_view/model/task_model.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TaskModel taskModel = new TaskModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 28,
                    backgroundImage: AssetImage(AppAssets.profileimage),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello Mojahid',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Welcome to Task Manager',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 34),
              CustomText(
                text: 'My Tasks',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 0,
                color: AppColors.primarytext,
              ),
              SizedBox(height: 5),

              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(bottom: 31),
                  itemCount: taskModel.tasklist.length,
                  itemBuilder: (context, index) {
                    return TaskItem(
                      title: '${taskModel.tasklist[index]['title']}',
                      des: '${taskModel.tasklist[index]['description']}',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Dashboard(),
    );
  }
}

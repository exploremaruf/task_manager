import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/app_colors.dart';
import 'package:task_manager/utils/custom_text.dart';
import 'package:task_manager/utils/task_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 96,
                    width: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profileimage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Hello Mojahid',
                        color: AppColors.primarytext,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      CustomText(
                        text: 'Welcome to Task Manager ',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return TaskItem();
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

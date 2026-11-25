import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/utils/custom_text.dart';

class MyprofileHeader extends StatelessWidget {

  final String name;

  const MyprofileHeader({super.key, required this.name});



  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage(AppAssets.profilescreenimage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10,),
        CustomText(text: name,fontSize: 20,fontWeight: FontWeight.w500,)
      ],
    );
  }
}

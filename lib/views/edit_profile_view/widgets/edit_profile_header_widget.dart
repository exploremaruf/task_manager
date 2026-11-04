import 'package:flutter/material.dart';
import 'package:task_manager/constant/app_assets.dart';

class EditProfileHeaderWidget extends StatelessWidget {
  const EditProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            image: DecorationImage(
              image: AssetImage(AppAssets.profilescreenimage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 113,
            right: 9,
            child: Container(

          height: 32,
          width: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
            
          ),
              child: Center(
                child: Icon(Icons.photo_camera_outlined,size: 20,),
              ),
        ))
      ],
    );
  }
}

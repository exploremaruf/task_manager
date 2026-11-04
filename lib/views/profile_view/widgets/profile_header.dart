import 'package:flutter/material.dart';

import '../../../constant/app_assets.dart';
import '../../../utils/header_clipper.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        // Green header
        ClipPath(
          clipper: HeaderClipper(),
          child: SizedBox(
            width: double.infinity,
            height: 160,
            child: Image.asset(
              AppAssets.profilescreenheaderbg,
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Profile image
        Positioned(
          top: 100,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
              image: DecorationImage(
                image: AssetImage(AppAssets.profilescreenimage),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

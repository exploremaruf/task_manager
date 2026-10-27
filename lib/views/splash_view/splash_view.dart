import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          AppAssets.splashscreenimage,
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}

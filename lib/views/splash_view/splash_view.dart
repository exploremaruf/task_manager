import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/constant/local_storage.dart';
import 'package:task_manager/utils/dashboard.dart';
import 'package:task_manager/views/onboarding_view/onboarding_1_view/onboarding_1_view.dart';

import '../../constant/app_assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      checkToken();
    });
  }

  Future<void> checkToken() async {
    String? token = await LocalStorage.getToken();
    if (!mounted) return;

    if (token != null && token.isNotEmpty) {
      Get.offAll(Dashboard());
    } else {
      Get.offAll(Onboarding1View());
    }
  }

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

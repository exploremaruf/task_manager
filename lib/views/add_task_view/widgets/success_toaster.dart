import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showToast() {
  Get.snackbar(
    'Success',
    'A new Task Added!',
    snackPosition: SnackPosition.TOP,
    backgroundColor: Colors.black.withOpacity(0.5),
    colorText: Colors.white,
    borderRadius: 10,
    margin: const EdgeInsets.all(15),
    duration: const Duration(seconds: 2),
    isDismissible: true,
    forwardAnimationCurve: Curves.easeOutBack,
  );
}

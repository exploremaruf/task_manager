import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/constant/app_assets.dart';
import 'package:task_manager/constant/app_colors.dart';

class AuthScreenDes extends StatelessWidget {
  final String des;
  const AuthScreenDes({super.key, required this.des});

  @override
  Widget build(BuildContext context) {
    return Text(des,style: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: -1,
      color: AppColors.secondarytext,
      height: 1.25

    ),);
  }
}

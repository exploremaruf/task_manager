import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class AppInputFields extends StatelessWidget {
  final String label;
  final String hinttext;
  Icon? prefixicon;
  Icon? sufixicon;
  TextEditingController? controller;
  bool? obsecure=null;


  AppInputFields({
    super.key,
    required this.label,
    required this.hinttext,
    this.prefixicon,
    this.sufixicon,
    this.controller,
    this.obsecure
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primarytext,
          ),
        ),
        SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: obsecure??false,
          decoration: InputDecoration(
            hintText: hinttext,
            prefixIcon: prefixicon,
            suffixIcon: sufixicon,

            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

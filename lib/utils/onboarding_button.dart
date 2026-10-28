import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class OnboardingButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback ontap;

  const OnboardingButton({
    super.key,
    required this.title,
    required this.iconData,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ontap();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        fixedSize: Size(358, 54),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight(600),
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          Icon(iconData, size: 20, color: Colors.white),
        ],
      ),
    );
  }
}

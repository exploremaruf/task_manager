import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OboardingDes extends StatelessWidget {
  final String des;

  const OboardingDes({super.key, required this.des});

  @override
  Widget build(BuildContext context) {
    return Text(
      des,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        letterSpacing: -0.48,
        fontSize: 12,

      ),
      textAlign: TextAlign.center,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OboardingTitle extends StatelessWidget {
  final String title;

  const OboardingTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.48,
        fontSize: 18,

      ),
      textAlign: TextAlign.center,
    );
  }
}

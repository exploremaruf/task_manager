import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreenTitle extends StatelessWidget {
  final String title;

  const AuthScreenTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}

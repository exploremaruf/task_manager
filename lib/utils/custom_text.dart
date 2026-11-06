import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  double? letterSpacing;
  double? wordSpacing;
  double? lineheight;


  CustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.letterSpacing,
    this.wordSpacing,
    this.lineheight
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        height: lineheight,

      ),
    );
  }
}

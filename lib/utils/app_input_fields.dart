import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class AppInputFields extends StatefulWidget {
  final String label;
  final String hinttext;
  final Icon? prefixicon;
  final IconButton? sufixicon;
  final TextEditingController? controller;
  final bool? obsecure;
  final int? minlines;
  final int? maxlines;

  const AppInputFields({
    super.key,
    required this.label,
    required this.hinttext,
    this.prefixicon,
    this.sufixicon,
    this.controller,
    this.obsecure,
    this.maxlines = 1,
    this.minlines = 1,
  });

  @override
  State<AppInputFields> createState() => _AppInputFieldsState();
}

class _AppInputFieldsState extends State<AppInputFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primarytext,
          ),
        ),

        const SizedBox(height: 6),

        TextField(
          controller: widget.controller,
          obscureText: widget.obsecure ?? false,
          maxLines: widget.maxlines,
          minLines: widget.minlines,
          keyboardType: widget.maxlines == null
              ? TextInputType.multiline
              : TextInputType.text,
          decoration: InputDecoration(
            hintText: widget.hinttext,
            prefixIcon: widget.prefixicon,
            suffixIcon: widget.sufixicon,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/app_colors.dart';

class AppInputFields extends StatefulWidget {
  // Basic properties
  final String label;
  final String hinttext;

  // Icons
  final Widget? prefixicon;
  final Widget? sufixicon;

  // Controller
  final TextEditingController? controller;
  final FocusNode? focusNode;

  // Password
  final bool obscureText;
  final bool obscureToggle;

  // Lines
  final int? minlines;
  final int? maxlines;
  final bool expands;

  // Validation
  final bool isRequired;
  final String? errormessage;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode autovalidateMode;

  // Input behavior
  final bool enabled;
  final bool readOnly;
  final bool autofocus;
  final bool? enableInteractiveSelection;
  final bool? autocorrect;
  final bool? enableSuggestions;

  // Keyboard
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;

  // Input restrictions
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final List<TextInputFormatter>? inputFormatters;

  // Text styling
  final TextStyle? style;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextAlign textAlign;
  final TextAlignVertical? textAlignVertical;

  // Callbacks
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;

  // Decoration
  final InputDecoration? decoration;
  final EdgeInsetsGeometry? contentPadding;
  final Color? fillColor;
  final Color? cursorColor;
  final double? cursorHeight;
  final double? cursorWidth;

  const AppInputFields({
    super.key,

    required this.label,
    required this.hinttext,

    this.prefixicon,
    this.sufixicon,

    this.controller,
    this.focusNode,

    this.obscureText = false,
    this.obscureToggle = true,

    this.minlines = 1,
    this.maxlines = 1,
    this.expands = false,

    this.isRequired = true,
    this.errormessage,
    this.validator,
    this.autovalidateMode = AutovalidateMode.disabled,

    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.enableInteractiveSelection,
    this.autocorrect,
    this.enableSuggestions,

    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,

    this.maxLength,
    this.maxLengthEnforcement,
    this.inputFormatters,

    this.style,
    this.hintStyle,
    this.labelStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,

    this.onChanged,
    this.onSaved,
    this.onFieldSubmitted,

    this.decoration,
    this.contentPadding,
    this.fillColor,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth,
  });

  @override
  State<AppInputFields> createState() => _AppInputFieldsState();
}

class _AppInputFieldsState extends State<AppInputFields> {
  late bool _isObscured;

  @override
  void initState() {
    super.initState();
    _isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    final effectiveMaxLines = widget.expands ? null : widget.maxlines;

    final effectiveMinLines = widget.expands ? null : widget.minlines;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Label
        Text(
          widget.label,
          style:
              widget.labelStyle ??
              GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primarytext,
              ),
        ),

        const SizedBox(height: 6),

        // Text Field
        TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,

          // Password
          obscureText: _isObscured,

          // Lines
          minLines: effectiveMinLines,
          maxLines: effectiveMaxLines,
          expands: widget.expands,

          // Input behavior
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          autofocus: widget.autofocus,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          autocorrect: widget.autocorrect ?? true,
          enableSuggestions: widget.enableSuggestions ?? true,
          // Keyboard
          keyboardType:
              widget.keyboardType ??
              (effectiveMaxLines == 1
                  ? TextInputType.text
                  : TextInputType.multiline),

          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,

          // Input restrictions
          maxLength: widget.maxLength,
          maxLengthEnforcement: widget.maxLengthEnforcement,
          inputFormatters: widget.inputFormatters,

          // Text styling
          style:
              widget.style ??
              GoogleFonts.poppins(fontSize: 13, color: AppColors.primarytext),

          textAlign: widget.textAlign,
          textAlignVertical: widget.textAlignVertical,

          // Cursor
          cursorColor: widget.cursorColor ?? AppColors.primary,
          cursorHeight: widget.cursorHeight,
          cursorWidth: widget.cursorWidth ?? 2,

          // Callbacks
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          onFieldSubmitted: widget.onFieldSubmitted,

          // Validation
          validator: (value) {
            if (widget.isRequired && (value == null || value.trim().isEmpty)) {
              return widget.errormessage ?? 'This field is required';
            }

            return widget.validator?.call(value);
          },
          autovalidateMode: widget.autovalidateMode,

          // Decoration
          decoration: (widget.decoration ?? const InputDecoration()).copyWith(
            hintText: widget.hinttext,

            prefixIcon: widget.prefixicon,

            suffixIcon: _buildSuffixIcon(),

            contentPadding:
                widget.contentPadding ??
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),

            filled: true,
            fillColor: widget.fillColor ?? AppColors.textfieldcolor,

            hintStyle:
                widget.hintStyle ??
                GoogleFonts.poppins(fontSize: 12, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon() {
    if (!widget.obscureText || !widget.obscureToggle) {
      return widget.sufixicon;
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.sufixicon != null) widget.sufixicon!,

        IconButton(
          onPressed: () {
            setState(() {
              _isObscured = !_isObscured;
            });
          },
          icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
        ),
      ],
    );
  }
}

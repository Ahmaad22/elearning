import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
     this.suffixIcon,
     this.validator,
    required this.obscureText,
    required this.isPassword,
    this.onChanged,
    required this.lable,
  });
  final String lable;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  final Function(String)? onChanged;
  bool obscureText;
  final bool isPassword;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: GoogleFonts.montserrat(
        color: ConstColors.greyColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.12,
      ),
      cursorColor: ConstColors.greyColor,
      decoration: InputDecoration(
        label: Text(
          widget.lable,
          style: GoogleFonts.montserrat(
            color: Colors.red,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.12,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ConstColors.greyColor.withOpacity(0.2),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConstColors.greyColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConstColors.greyColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(50),
        
        ),
      ),
      validator: widget.validator,
    );
  }
}

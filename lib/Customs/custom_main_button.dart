import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.text,
    required this.onTap,  this.width=double.infinity,this.radius=40,  this.height=56,  this.fontSize=16,  this.backgroundColor=ConstColors.primaryColor,
    this.textColor=Colors.black
    
  });
  final String? text;
  final VoidCallback? onTap;
  final double width;
   final double height;
  final double radius;
  final double fontSize;
  final Color backgroundColor;
    final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.white),
            color: backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Center(
          child: Text(
            "$text",
            style: GoogleFonts.montserrat(
              textStyle:  TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

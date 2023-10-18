
import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({
    super.key, required this.choice1, required this.choice2,
  });
final String choice1;
final String choice2;

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  Color backgroundColor1 = Colors.transparent;
  Color backgroundColor2 = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (() {
            setState(() {
              if (backgroundColor1 == Colors.transparent) {
                backgroundColor1 = ConstColors.primaryColor;
                backgroundColor2 = Colors.transparent;
              } else {
                backgroundColor1 = Colors.transparent;
              }
            });
          }),
          child: Container(
            width: 150,
            height: 45,
            decoration: BoxDecoration(
                color: backgroundColor1,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xFF414141))),
            child: Center(
              child: Text(
                widget.choice1,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: (() {
            setState(() {
              if (backgroundColor2 == Colors.transparent) {
                backgroundColor2 = ConstColors.primaryColor;
                backgroundColor1 = Colors.transparent;
              } else {
                backgroundColor2 = Colors.transparent;
              }
            });
          }),
          child: Container(
            width: 150,
            height: 45,
            decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color:const Color(0xFF414141))),
            child: Center(
              child: Text(
                widget.choice2,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

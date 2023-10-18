
import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key, required this.title, this.icon = Icons.arrow_back_ios,
  });
final String title;
final dynamic icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(
          height: 60,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ConstColors.primaryColor,
                ),
              ),
            ),
           const  Spacer(flex: 2,),
            Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ConstColors.primaryColor)),
       const Spacer(flex: 3,)
          ],
        )
      ],
    );
  }
}

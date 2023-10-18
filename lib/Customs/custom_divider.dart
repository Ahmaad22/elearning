
import 'package:elearning/ConstsColor/constcolor.dart';
import 'package:flutter/material.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ConstColors.greyColor.withOpacity(0.1),
      height: 0,
      thickness: 2,
      indent: 24,
      endIndent: 24,
    );
  }
}

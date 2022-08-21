import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int? size;
  final Color? color;
  final bool bold;
  final bool centre;
  const CustomText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.bold = false,
    this.centre = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: centre ? TextAlign.center : TextAlign.start,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: color,
          fontSize: size?.sp,
          fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
        ),
      ),
    );
  }
}

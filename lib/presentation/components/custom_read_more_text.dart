import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

class CustomReadMoreText extends StatelessWidget {
  String text;
  CustomReadMoreText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      style: GoogleFonts.lato(
        textStyle: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold,color: Colors.grey)
      ),

      trimLines: 5,
      colorClickableText: AppTheme.primaryColor,
      trimMode: TrimMode.Line,
      trimCollapsedText: AppStrings.readMore,
      trimExpandedText: AppStrings.readLess,
      moreStyle: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: AppTheme.primaryColor)
      ),
      lessStyle: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: AppTheme.primaryColor)
      ),
    );
  }
}


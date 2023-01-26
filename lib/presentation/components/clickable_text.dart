import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ClickableText extends StatelessWidget {
  String clickableText;
  String noneClickableText;

  ClickableText({
    Key? key,
    this.clickableText = "",
    this.noneClickableText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        CustomText(
          text: noneClickableText,
          color: Colors.grey,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
        ),

        CustomText(
            text: clickableText,
            color: AppTheme.primaryColor,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

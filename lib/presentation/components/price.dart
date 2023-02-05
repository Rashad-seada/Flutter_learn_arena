import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/config/app_theme.dart';
import '../widgets/custom_text.dart';
import '../widgets/space.dart';

class Price extends StatelessWidget {
  double fontSize;
  double? priceBefore;
  double price;
  Price({
    Key? key,
    required this.price,
    required this.fontSize,
    this.priceBefore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: "\$ $price",
          fontSize: fontSize,
          color: AppTheme.primaryColor,
          fontWeight: FontWeight.w600,
          maxLines: 2,
        ),

        Space(width: 2.w,),

        (priceBefore != null)?
        CustomText(
          text: "\$ $priceBefore",
          fontSize: fontSize - 3.sp,
          color: Colors.grey,
          fontWeight: FontWeight.w600,
          maxLines: 2,
        ):SizedBox(),

      ],
    );
  }
}

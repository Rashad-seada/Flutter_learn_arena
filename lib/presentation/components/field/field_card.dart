import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/config/app_theme.dart';
import '../../widgets/custom_text.dart';

class FieldCard extends StatelessWidget {
  String title;
  FieldCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: AppTheme.primaryColor.withOpacity(0.05),),
      child: CustomText(text: title,color: AppTheme.primaryColor.withOpacity(0.7),fontSize: 6.sp,fontWeight: FontWeight.w600,),
    );
  }
}

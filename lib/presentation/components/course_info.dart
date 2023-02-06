import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';

import '../widgets/space.dart';

class CourseInfo extends StatelessWidget{
  IconData? icon;
  String text;

  CourseInfo({
    this.icon,
    required this.text,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color:AppTheme.primaryColor,size:4.5.w,),
        Space(width:1.w,),
        CustomText(text: text,fontWeight:FontWeight.w500,fontSize:8.sp,)
      ],
    );
  }

}

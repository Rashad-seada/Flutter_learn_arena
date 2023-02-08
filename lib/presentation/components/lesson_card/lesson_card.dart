import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../custom_container.dart';

class LessonCard extends StatelessWidget {
  int lessonIndex;
  bool isLessonAvailable;

  LessonCard({
    Key? key,
    required this.lessonIndex,
    required this.isLessonAvailable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: 85.w,
      height: 7.5.h,
      padding: EdgeInsets.symmetric(horizontal: 3.5.w,vertical: 1.7.h),
      margin: EdgeInsets.only(bottom: 1.5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 4.5.w,
                backgroundColor: AppTheme.primaryColor.withOpacity(0.1),
                child: CustomText(text: '$lessonIndex',color: AppTheme.primaryColor,fontSize: 10.sp,fontWeight: FontWeight.w600,),
              ),
              Space(width: 3.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "Why Writing a clean Code",fontWeight: FontWeight.w700,fontSize: 10.sp,),
                  CustomText(text: "10 "+AppStrings.minute,color: Colors.grey,fontSize: 8.sp,fontWeight: FontWeight.w600,),
                ],
              ),
            ],
          ),


          (isLessonAvailable == true)?
          CircleAvatar(
            radius: 2.6.w,
            backgroundColor: AppTheme.primaryColor,
            child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 4.w,),
          )
              :Icon(Icons.lock_outline_rounded,color: Colors.grey.withOpacity(0.5),size: 5.w,)

        ],
      ),
    );
  }
}

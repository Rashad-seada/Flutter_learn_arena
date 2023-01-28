import 'package:e_learn/core/config/app_images.dart';
import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAvatar extends StatelessWidget {
  String image;
  String name;
  Color nameColor;
  String myLevel;
  Color myLevelColor;
  CustomAvatar({
    Key? key,
    this.image = AppImages.profile,
    this.myLevel = '',
    this.myLevelColor = Colors.grey,
    this.nameColor = Colors.black,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 13.w,
          height: 13.w,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),

          child: Image.asset(image,fit: BoxFit.cover,),
        ),

        Space(width: 2.7.w,),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children: [
                CustomText(text: AppStrings.hi,color: myLevelColor,fontSize: 14.sp,),

                Space(width: 1.5.w,),

                CustomText(text: "$name!",fontSize: 14.sp,color: nameColor,),
              ],
            ),

            Space(height: .3.h,),

            CustomText(text: myLevel ,fontSize: 11.sp,color: myLevelColor,fontWeight: FontWeight.w400,),

          ],
        ),
      ],
    );
  }
}

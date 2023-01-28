import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learn/core/config/app_images.dart';
import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/components/main_botton.dart';
import 'package:e_learn/presentation/components/statistics_card.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/space.dart';

class UserHeaderSection extends StatelessWidget {
  UserHeaderSection({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 28.w,
          height: 28.w,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),

          child: CachedNetworkImage(
            imageUrl: "",
            placeholder:(_,string)=> Image.asset(AppImages.profile),
            errorWidget: (_,string,dynamic)=> Image.asset(AppImages.profile),
            alignment: Alignment.center,
          ),
        ),
        Space(height: 1.h),

        CustomText(text: "Rashad Seada",fontWeight: FontWeight.w600,fontSize: 16.sp,),

        Space(height: 1.h),

        CustomText(text: "Software developer",fontWeight: FontWeight.w500,fontSize: 11.sp,color: Colors.black54,),

        Space(height: 2.5.h),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticCard(num: '25', cate: AppStrings.courses,),
              StatisticCard(num: '22379', cate: AppStrings.students,),
              StatisticCard(num: '9287', cate: AppStrings.reviews,),

            ],
          ),
        ),

        Space(height: 2.5.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MainBotton(
              width: 43.w,
              height: 5.h,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.message_rounded,color: Colors.white,),
                Space(width: 2.w),
                CustomText(text: AppStrings.message,color: Colors.white,)
              ],
            )),

            Space(width: 3.w,),

            MainBotton(
                width: 43.w,
                height: 5.h,
                color: Colors.white,
                borderColor: AppTheme.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Icon(Icons.explore,color: AppTheme.primaryColor,),
                  Space(width: 2.w),
                  CustomText(text: AppStrings.website,color: AppTheme.primaryColor,)

                ],
            )),

          ],
        ),

      ],
    );
  }
}



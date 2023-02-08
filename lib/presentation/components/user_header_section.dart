import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learn/core/config/app_images.dart';
import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/components/main_button.dart';
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 26.w,
          height: 26.w,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),

          child: CachedNetworkImage(
            imageUrl: "",
            placeholder:(_,string)=> Image.asset(AppImages.profile),
            errorWidget: (_,string,dynamic)=> Image.asset(AppImages.profile),
            alignment: Alignment.center,
          ),
        ),

        Column(
          children: [
            CustomText(text: "Rashad Seada",fontWeight: FontWeight.w600,fontSize: 16.sp,),
            Space(height: 2,),
            CustomText(text: "Software developer",fontWeight: FontWeight.w500,fontSize: 11.sp,color: Colors.black54,),
          ],
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatisticCard(num: '25', cate: AppStrings.courses,),
              StatisticCard(num: '15', cate: AppStrings.groups,),
              StatisticCard(num: '9287', cate: AppStrings.reviews,),

            ],
          ),
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MainButton(
              width: 43.w,
              height: 5.h,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.message_rounded,color: Colors.white,),
                Space(width: 2.w),
                CustomText(text: AppStrings.message,color: Colors.white,)
              ],
            )),

            Space(width: 3.w,),

            MainButton(
                width: 43.w,
                height: 5.h,
                color: Colors.white,
                borderColor: AppTheme.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  const Icon(Icons.explore,color: AppTheme.primaryColor,),
                  Space(width: 2.w),
                  CustomText(text: AppStrings.website,color: AppTheme.primaryColor,),
                  Space(width: 2.w),

                ],
            )),

          ],
        ),

      ],
    );
  }
}



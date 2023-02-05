import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/components/custom_back_button.dart';
import 'package:e_learn/presentation/components/field/field_card.dart';
import 'package:e_learn/presentation/components/main_botton.dart';
import 'package:e_learn/presentation/components/price.dart';
import 'package:e_learn/presentation/screens/09_course/course_about_page.dart';
import 'package:e_learn/presentation/screens/09_course/course_lessons_page.dart';
import 'package:e_learn/presentation/screens/09_course/course_reviews_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/config/app_strings.dart';
import '../../components/custom_tabs.dart';
import '../../widgets/custom_text.dart';

class CourseScreen extends StatelessWidget {
  int id;
  CourseScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Column(
              children: [
                
                Column(

                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 27.h,
                          width: 100.w,
                          color: AppTheme.primaryColor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.h,left: 3.w),
                          child: CustomBackButton(color: Colors.white,),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "Intro to Clean Code and (SOLID) and the the principles of uncle pop",fontSize: 17.sp,fontWeight: FontWeight.w600,maxLines: 2,),
                          FieldCard(title: "Clean Code"),
                          Price(price: 40,priceBefore: 75,fontSize: 14.sp,),
                          const SizedBox(),
                        ],
                      ),
                    )

                  ],
                ),
                Expanded(
                    flex: 6,
                    child: CustomTabs(
                      tabs: [
                        Tab(child: CustomText(text: AppStrings.about,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                        Tab(child: CustomText(text: AppStrings.lessons,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                        Tab(child: CustomText(text: AppStrings.reviews,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                      ],
                      pages: const [
                        CourseAboutPage(),
                        CourseLessonPage(),
                        CourseReviewsPage(),
                      ],
                    )
                ),
                
                
                
              ],
            ),
          )


        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 1.h),
        child: MainBotton(
          width: 75.w,
          height: 6.h,
          child: CustomText(text: 'Enroll Course - \$40',color: Colors.white,),),
      ),
    );
  }
}

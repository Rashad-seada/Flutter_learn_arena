import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/config/app_strings.dart';
import '../../widgets/custom_text.dart';
import '../courses_section/courses_section.dart';

class ExploreCoursesSection extends StatelessWidget {

  const ExploreCoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 7.w),
          child: CustomText(text: AppStrings.popularCourses,fontWeight: FontWeight.w400,fontSize: 15.sp,),
        ),

        Space(height: 1.h,),
        CoursesSection(
          itemCount: 3,
          scrollDirection: Axis.horizontal,
          width: 100.w,
          height: 18.h,
          leftCardPadding: 1.5.h,
          buttonCardPadding: 3.h,
        ),
      ],
    );
  }
}

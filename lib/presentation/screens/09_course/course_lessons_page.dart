import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/config/app_strings.dart';
import '../../components/lesson_section/lesson_section.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';

class CourseLessonPage extends StatelessWidget {
  const CourseLessonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.2.h),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [

              (index == 0)?
                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: '12 '+ AppStrings.lessons,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  )
                  : SizedBox(),

              LessonSection(
                lessonCount: 3,
                sectionTitle: 'Clean Code Basic',
                sectionIndex: index+1,
              ),

              (index == 3 - 1)?
                  Space(height: 10.h,)
                  : SizedBox(),
            ],
          );
        },
      ),
    );
  }
}
import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../lesson_card/lesson_card.dart';

class LessonSection extends StatelessWidget {
  int lessonCount;
  int sectionIndex;
  String sectionTitle;

  LessonSection({
    Key? key,
    required this.lessonCount,
    required this.sectionTitle,
    required this.sectionIndex,
  }) : super(key: key);

  static int allLessonCount = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(

          title: CustomText(
            text: '${AppStrings.section} $sectionIndex - $sectionTitle',
            color: Colors.grey,
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
          ),
          iconColor: Colors.grey,
          collapsedIconColor: AppTheme.primaryColor,
          children: List.generate( lessonCount, (index) {
            return LessonCard(lessonIndex: allLessonCount += 1, isLessonAvailable: true ,);
          },),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/courses_section/courses_section.dart';

class UserCoursesPage extends StatelessWidget {
  const UserCoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CoursesSection(
        leftCardPadding: 4.w,
        rightCardPadding: 4.w,
        buttonCardPadding: 3.w,
        scrollDirection: Axis.vertical,
        itemCount: 3,
      ),
    );
  }
}
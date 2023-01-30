import 'package:flutter/material.dart';
import '../../components/courses_section/courses_section.dart';

class UserCourses extends StatelessWidget {
  const UserCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CoursesSection(
        scrollDirection: Axis.vertical,
        itemCount: 3,
      ),
    );
  }
}
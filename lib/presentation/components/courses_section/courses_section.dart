import 'package:flutter/material.dart';
import '../course_card/course_card.dart';

class CoursesSection extends StatelessWidget {
  Axis scrollDirection;
  int itemCount;
  CoursesSection({
    Key? key,
    this.scrollDirection = Axis.horizontal,
    required this.itemCount,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView.builder(
          scrollDirection: scrollDirection,
          physics: const BouncingScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: CourseCard(id: 1,),
            );
          },

      ),
    );
  }
}

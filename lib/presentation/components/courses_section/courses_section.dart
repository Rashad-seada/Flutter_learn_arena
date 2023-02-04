import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../screens/09_course/course_screen.dart';
import '../course_card/course_card.dart';
import '../custom_page_transition.dart';

class CoursesSection extends StatelessWidget {
  Axis scrollDirection;
  int itemCount;
  double width;
  double height;
  double topCardPadding ;
  double buttonCardPadding;
  double rightCardPadding ;
  double leftCardPadding ;
  Function()? onTap;

  CoursesSection({
    Key? key,
    this.onTap,
    this.scrollDirection = Axis.horizontal,
    this.topCardPadding = 0,
    this.buttonCardPadding = 0,
    this.rightCardPadding = 0,
    this.leftCardPadding = 0,
    this.width = double.infinity,
    this.height = double.infinity,
    required this.itemCount,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ListView.builder(
          scrollDirection: scrollDirection,
          physics: const BouncingScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.only(
                  left:(scrollDirection == Axis.horizontal && index == 0)? 7.w: leftCardPadding,
                  right: (scrollDirection == Axis.horizontal && index == itemCount - 1)? 7.w: rightCardPadding,
                  top: (scrollDirection == Axis.vertical && index == 0)? 4.w: topCardPadding,
                  bottom: (scrollDirection == Axis.vertical && index == itemCount - 1)? 4.w: buttonCardPadding,
              ),
              child: CourseCard(
                onTap: ()=> Navigator.push(context, CustomPageTransition(CourseScreen(id: 1,))),
                id: 1,
              ),
            );
          },
      ),
    );
  }
}

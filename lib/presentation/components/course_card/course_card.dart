import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';

class CourseCard extends StatelessWidget {
  Color color;
  String title;
  double rating;
  CourseCard({
    Key? key,
    this.color = Colors.blue,
    required this.title,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              color.withOpacity(0.1),
              color.withOpacity(0.2),
              color.withOpacity(0.3),
              color.withOpacity(0.7),
              color,
            ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(15)
        ),
        padding: EdgeInsets.symmetric(vertical: 2.w,horizontal: 1.h),
          width: 40.w,
          height: 7.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                CustomText(text: 'see',maxLines: 2,color: Colors.white,),
              ],),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: title,maxLines: 2,color: Colors.white,),
                  Space(height: .5.h,),
                  SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: rating,
                      size: 3.w,
                      filledIconData: Icons.star_rate_rounded,
                      halfFilledIconData: Icons.star_half_rounded,
                      color: Colors.amber,
                      borderColor: Colors.amber,
                      spacing:0.0
                  )
                ],
              )

            ],
          )),
    );
  }
}

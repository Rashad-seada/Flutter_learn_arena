import 'package:e_learn/presentation/components/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../widgets/space.dart';

class NotificationCardPlaceHolder extends StatelessWidget {

  NotificationCardPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.w,
      height: 15.w,
      child: Row(
        children: [

          CustomShimmer(
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              alignment: Alignment.center,
              width: 15.w,
              height: 15.w,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),

          Space(width: 2.5.w,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CustomShimmer(
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  alignment: Alignment.center,
                  width: 25.w,
                  height: 3.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),

              Space(height: .5.h,),

              CustomShimmer(
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  alignment: Alignment.center,
                  width: 37.w,
                  height: 4.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),

              Space(height: .5.h,),

              SmoothStarRating(
                  allowHalfRating: true,
                  starCount: 5,
                  rating: 5,
                  size: 4.w,
                  filledIconData: Icons.star_rate_rounded,
                  halfFilledIconData: Icons.star_half_rounded,
                  color: Color(0xfff3f3f3),
                  borderColor: Color(0xfff3f3f3),
                  spacing:0.0
              )

            ],
          ),



        ],
      ),
    );
  }
}

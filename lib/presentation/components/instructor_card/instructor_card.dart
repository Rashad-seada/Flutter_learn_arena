import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learn/core/config/app_images.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../../widgets/space.dart';

class InstructorCard extends StatelessWidget {
  Color color;
  String imageUrl;
  String name;
  String jobTilte;
  double rating;
  bool isVerified;

  InstructorCard({
    Key? key,
    required this.name,
    required this.jobTilte,
    required this.rating,
    this.imageUrl = '',
    this.isVerified = false,
    this.color = AppTheme.primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58.w,
      child: Row(
        children: [

          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            alignment: Alignment.center,
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              alignment: Alignment.center,
              width: 14.w,
              height: 14.w,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CachedNetworkImage(
                placeholder:(context,string) => Image.asset(AppImages.instructor),
                imageUrl: imageUrl,
                errorWidget: (context,string,dynamic) => Image.asset(AppImages.instructor),
              ),
            ),
          ),

          Space(width: 2.5.w,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: name,fontSize: 12.sp,fontWeight: FontWeight.w400,),

                  Space(width: 1.w,),

                  (isVerified)? Image.asset(AppImages.verified,width: 4.w,height: 4.w,): SizedBox(),
                ],
              ),

              CustomText(text: jobTilte,fontSize: 13.sp,color: AppTheme.primaryColor,),

              Space(height: .25.h,),

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
          ),



        ],
      ),
    );
  }
}

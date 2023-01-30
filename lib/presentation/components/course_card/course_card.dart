import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/space.dart';

class CourseCard extends StatelessWidget {
  int id;
  Axis? scrollDirection;

  CourseCard({
    Key? key,
    required this.id,
    this.scrollDirection
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      height: 16.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(20, 15),
              blurRadius: 15,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.07),
            )
          ]
      ),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(15),
                height: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppTheme.bgColor),
                child: CachedNetworkImage(
                  imageUrl: "",
                  placeholder:(_,string)=> Icon(Icons.image_outlined,color: Colors.grey,size: 10.w,),
                  errorWidget: (_,string,dynamic)=> Icon(Icons.image_outlined,color: Colors.grey,size: 10.w,),
                  alignment: Alignment.center,
                )
              ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: AppTheme.primaryColor.withOpacity(0.05),),
                      child: CustomText(text: "Mobile app development",color: AppTheme.primaryColor.withOpacity(0.7),fontSize: 6.sp,fontWeight: FontWeight.w600,),
                  ),

                 CustomText(
                   text: "Learn Mobile app development in 30 days",
                   fontSize: 10.sp,
                   fontWeight: FontWeight.w600,
                   maxLines: 2,
                 ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "\$ 42",
                        fontSize: 11.sp,
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w600,
                        maxLines: 2,
                      ),

                      Space(width: 2.w,),

                      CustomText(
                        text: "\$ 75",
                        fontSize: 8.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        maxLines: 2,
                      ),

                    ],
                  ),
                  
                  Row(
                    children: [
                      Icon(Icons.star_half_rounded,color: Colors.amber,size: 3.5.w,),
                      Space(width: 1.5.w,),

                      CustomText(
                        text: "4.7    |    7938 students",
                        fontSize: 6.5.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        maxLines: 2,
                      ),
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
      );

  }
}

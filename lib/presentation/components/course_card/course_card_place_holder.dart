import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learn/presentation/components/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/config/app_theme.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';

class CourseCardPlaceHolder extends StatelessWidget {
  const CourseCardPlaceHolder({Key? key}) : super(key: key);

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
          ]),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                margin: EdgeInsets.all(15),
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.bgColor),
                child: CustomShimmer(
                  baseColor: Colors.grey[300]!.withOpacity(0.6),
                  highlightColor: Colors.grey[100]!,
                  child: CachedNetworkImage(
                    imageUrl: "",
                    placeholder: (_, string) => Icon(
                      Icons.image_outlined,
                      color: Colors.grey,
                      size: 10.w,
                    ),
                    errorWidget: (_, string, dynamic) => Icon(
                      Icons.image_outlined,
                      color: Colors.grey,
                      size: 10.w,
                    ),
                    alignment: Alignment.center,
                  ),
                )),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.primaryColor.withOpacity(0.05),
                    ),
                    child: CustomShimmer(
                      baseColor: Colors.grey[300]!.withOpacity(0.6),
                      highlightColor: Colors.grey[100]!,
                      child: SizedBox(
                        height: .5.h,
                        width: 22.5.w,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.primaryColor.withOpacity(0.05),
                    ),
                    child: CustomShimmer(
                      baseColor: Colors.grey[300]!.withOpacity(0.6),
                      highlightColor: Colors.grey[100]!,
                      child: SizedBox(
                        height: .5.h,
                        width: 25.w,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppTheme.primaryColor.withOpacity(0.05),
                    ),
                    child: CustomShimmer(
                      baseColor: Colors.grey[300]!.withOpacity(0.6),
                      highlightColor: Colors.grey[100]!,
                      child: SizedBox(
                        height: .5.h,
                        width: 33.w,
                      ),
                    ),
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppTheme.primaryColor.withOpacity(0.05),
                        ),
                        child: CustomShimmer(
                          baseColor: Colors.grey[300]!.withOpacity(0.6),
                          highlightColor: Colors.grey[100]!,
                          child: SizedBox(
                            height: 1.5.h,
                            width: 4.w,
                          ),
                        ),
                      ),
                      Space(
                        width: 2.w,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppTheme.primaryColor.withOpacity(0.05),
                        ),
                        child: CustomShimmer(
                          baseColor: Colors.grey[300]!.withOpacity(0.6),
                          highlightColor: Colors.grey[100]!,
                          child: SizedBox(
                            height: 1.h,
                            width: 3.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CustomShimmer(
                        baseColor: Colors.grey[300]!.withOpacity(0.6),
                        highlightColor: Colors.grey[100]!,
                        child: Icon(
                          Icons.star_half_rounded,
                          color: Colors.amber,
                          size: 3.5.w,
                        ),
                      ),
                      Space(
                        width: 1.5.w,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppTheme.primaryColor.withOpacity(0.05),
                        ),
                        child: CustomShimmer(
                          baseColor: Colors.grey[300]!.withOpacity(0.6),
                          highlightColor: Colors.grey[100]!,
                          child: SizedBox(
                            height: .5.h,
                            width: 22.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:e_learn/presentation/components/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/space.dart';

class HeadTitlePlaceHolder extends StatelessWidget {

  HeadTitlePlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            alignment: Alignment.center,
            width: 85.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

            ),
          ),

          Space(height: 2.h,),

          Container(
            alignment: Alignment.center,
            width: 65.w,
            height: 4.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }
}
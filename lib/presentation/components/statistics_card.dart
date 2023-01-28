import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_text.dart';
import '../widgets/space.dart';

class StatisticCard extends StatelessWidget {
  String num;
  String cate;

  StatisticCard({
    Key? key,
    required this.num,
    required this.cate
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(text: num,fontSize: 17.sp,fontWeight: FontWeight.w600,),
        Space(height: .75.h),

        CustomText(text: cate,color: Colors.black54,),
      ],
    );;
  }
}

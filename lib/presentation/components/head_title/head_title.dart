import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadTitle extends StatelessWidget {
  String content;

  HeadTitle({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 85.w,
      height: 10.h,
      child: CustomText(text: content,fontSize: 26.sp,maxLines: 3,color: Colors.black87,fontWeight: FontWeight.w400,),
    );
  }
}

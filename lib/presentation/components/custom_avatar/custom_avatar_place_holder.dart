import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../custom_shimmer.dart';

class CustomAvatarPlaceHolder extends StatelessWidget {
  const CustomAvatarPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomShimmer(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 13.w,
            height: 13.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,

            ),
          ),

          SizedBox(width: 2.w,),

          Container(
            width: 30.w,
            height: 6.w,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ],
      )
    );
  }
}



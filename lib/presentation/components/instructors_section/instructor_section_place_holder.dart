import 'package:e_learn/presentation/components/instructor_card/instructor_card_place_holder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';

import '../../../core/app_strings.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';
import '../custom_shimmer.dart';


class InstructorSectionPlaceHolder extends StatelessWidget {
  int itemCount;

  InstructorSectionPlaceHolder({
    Key? key,
    required this.itemCount,
  }) : super(key: key);

  selectedColor(int index,List<Color> colors){
    while(index > 0){
      index -= colors.length;
    }
    return -index;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(left: 8.5.w),
          child: CustomShimmer(
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              alignment: Alignment.center,
              width: 37.w,
              height: 4.5.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
              ),
            ),
          ),
        ),

        Space(height: 1.h,),

        Container(

          height: 7.5.h,
          width: 100.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {

              return Padding(
                padding: EdgeInsets.only(
                    top: 5, left: (index == 0)? 30: 10,
                    right: (index == itemCount - 1)? 30: 0
                ),
                child: InstructorCardPlaceHolder(),
              );
            },
          ),
        ),
      ],
    );
  }
}
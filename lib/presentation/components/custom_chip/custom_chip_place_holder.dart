import 'package:e_learn/presentation/components/custom_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/custom_text.dart';

class CustomChipPlaceHolder extends StatelessWidget {
  int itemCount;
  List<Color> colors;

  CustomChipPlaceHolder({
    Key? key,
    this.colors = const [Color(0xff92b2fd),Color(0xffad7ffb),Color(0xfff594b7)],
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
    return Container(

      height: 6.h,
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
            child: CustomShimmer(
              baseColor: colors[selectedColor(index,colors)].withOpacity(0.6),
              highlightColor: colors[selectedColor(index,colors)],
              child: Chip(
                labelPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                label: CustomText(text: 'Clean Code are',color: Colors.white,),

              ),
            ),
          );

        },
      ),
    );
  }
}
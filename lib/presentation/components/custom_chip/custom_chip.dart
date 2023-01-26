import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';

class CustomChip extends StatelessWidget {
  int itemCount;
  List<Color> colors;

  CustomChip({
    Key? key,
    this.colors = const [Color(0xff92b2fd),Color(0xffad7ffb),Color(0xfff594b7)],
    required this.itemCount,
  }) : super(key: key);

  Color selectedColor(int index, List<Color> colors){

    return colors[index % colors.length];

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

          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 5, left: (index == 0)? 7.w: 10,
                      right: (index == itemCount - 1)? 7.w: 0
                  ),
                  child: Chip(
                    labelPadding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),
                    backgroundColor: selectedColor(index, colors),
                    label: CustomText(text: 'Clean Code',color: Colors.white,),

                  ),
                ),
              ),
            ),
          );

        },
      ),
    );
  }
}






import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';
import '../../../core/config/app_strings.dart';
import '../../../core/config/app_theme.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';
import '../group_card/group_card.dart';

class GroupsSection extends StatelessWidget {

  int itemCount;
  List<Color> colors;

  GroupsSection({
    Key? key,
    required this.itemCount,
    this.colors = const [AppTheme.primaryColor],
  }) : super(key: key);

  Color selectedColor(int index, List<Color> colors){
    return colors[index % colors.length];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: EdgeInsets.only(left: 7.w),
          child: CustomText(text: AppStrings.nearByGroups,fontWeight: FontWeight.w400,fontSize: 15.sp,),
        ),

        Space(height: 1.h,),

        SizedBox(
          height: 20.h,
          width: 100.w,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: (context,index){

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
                    child: GroupCard(
                      image: 'https://assets.entrepreneur.com/content/3x2/2000/20150708172005-coding-working-workspace-apple-macintosh.jpeg',
                      title: "Learn Solid principles and Clean Code",
                      rating: 4.5,
                      color: selectedColor(index, colors),
                    ),
                  ),
                ),
              ),
            );
          })
        ),
      ],
    );
  }
}
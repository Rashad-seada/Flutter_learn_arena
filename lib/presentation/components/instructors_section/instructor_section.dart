import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:sizer/sizer.dart';
import '../../../core/config/app_theme.dart';
import '../../screens/08_user_profile/user_profile_screen.dart';
import '../../widgets/custom_text.dart';
import '../instructor_card/instructor_card.dart';

class InstructorSection extends StatelessWidget {
  int itemCount;
  List<Color> colors;

  InstructorSection({
    Key? key,
    this.colors = const [AppTheme.primaryColor],
    required this.itemCount,
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
          child: CustomText(text: AppStrings.listedInstructor,fontWeight: FontWeight.w400,fontSize: 15.sp,),
        ),

        SizedBox(
          height: 11.h,
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
                      child: InstructorCard(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> UserProfileScreen(userId: 1,)));
                        },
                        name: 'Rashad Seada',
                        jobTilte: 'Software developer',
                        color: selectedColor(index, colors),
                        imageUrl: "https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/IMG_4510_MdEL17t.jpg",
                        isVerified: true,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

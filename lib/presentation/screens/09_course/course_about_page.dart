import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/components/custom_page_transition.dart';
import 'package:e_learn/presentation/components/instructor_card/instructor_card.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/custom_read_more_text.dart';
import '../08_user_profile/user_profile_screen.dart';

class CourseAboutPage extends StatelessWidget {
  const CourseAboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 1.2.h),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CustomText(text: AppStrings.mentor,fontSize: 12.sp,fontWeight: FontWeight.w600,),
          Space(height: 1.1.h,),
          InstructorCard(
              name: 'Rashad Mohammed', jobTilte: "Software developer",
              onTap: (){
                Navigator.push(context,
                    CustomPageTransition(UserProfileScreen(userId: 1,)));
              }
          ),
          Space(height: 1.5.h,),

          CustomText(text: AppStrings.aboutCourse,fontSize: 12.sp,fontWeight: FontWeight.w600,),
          Space(height: 1.5.h,),
          CustomReadMoreText(text: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",),
          Space(height: 20.h,),


        ],
      ),
    );
  }
}

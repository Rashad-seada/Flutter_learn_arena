import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/components/custom_tabs.dart';
import 'package:e_learn/presentation/screens/08_user_profile/user_courses.dart';
import 'package:e_learn/presentation/screens/08_user_profile/user_reviews.dart';
import 'package:e_learn/presentation/screens/08_user_profile/user_groups.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/custom_back_button.dart';
import '../../components/user_header_section.dart';

class UserProfileScreen extends StatelessWidget {
  int userId;
  UserProfileScreen({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                child: Padding(
                  padding: EdgeInsets.only(top: 25,left: 5.w,bottom: 5),
                  child: CustomBackButton(title: '',),
                ),
              ),

              Expanded(
                flex: 5,
                child: UserHeaderSection(),),

              Space(height: 1.h,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Divider(),
              ),

              Expanded(
                flex: 7,
                child: CustomTabs(
                tabs: [
                  Tab(child: CustomText(text: AppStrings.courses,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                  Tab(child: CustomText(text: AppStrings.groups,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                  Tab(child: CustomText(text: AppStrings.reviews,fontWeight: FontWeight.w600,fontSize: 12.sp,)),
                ],
                pages: [
                  UserCourses(),
                  UserGroups(),
                  UserReviews(),
                ],
              ),),
            ],
          ),
        )
    );
  }
}
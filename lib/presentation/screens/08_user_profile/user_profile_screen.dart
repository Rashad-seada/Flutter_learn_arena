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

              Padding(
                padding: EdgeInsets.symmetric(vertical: 25,horizontal: 5.w),
                child: CustomBackButton(title: '',),
              ),

              Expanded(child: UserHeaderSection(),),

              Expanded(child: SizedBox(),),

            ],
          ),
        )
    );
  }
}
import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/components/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CourseScreen extends StatelessWidget {
  int id;
  CourseScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Column(
              children: [
                
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 30.h,
                        width: 100.w,
                        color: AppTheme.primaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h,left: 3.w),
                        child: CustomBackButton(color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container(color: Colors.amber,))
                
                
                
              ],
            ),
          )


        ],
      ),
    );
  }
}

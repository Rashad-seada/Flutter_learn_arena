import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 35),
            margin: EdgeInsets.all(20),
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

            Container(
              width: double.maxFinite,
              child: Row(

                children: [
                  Icon(Icons.arrow_back),
                  Space(width:5.w ,),
                  CustomText(text: AppStrings.NOTIFICATION,fontSize: 15.sp,fontWeight: FontWeight.w900,),
                  Space(width: 40.w,),
                  Icon(Icons.menu),
                ],
              ),
            ),
        Space(height: 5.h,),
        CustomText(text: AppStrings.TODAY,fontSize: 12.sp,fontWeight: FontWeight.w900,),
        Space(height: 5.h,),
        ListView.builder(itemBuilder: (contex,index){

        })

      ],
    ),
          ),
        ));
  }
}

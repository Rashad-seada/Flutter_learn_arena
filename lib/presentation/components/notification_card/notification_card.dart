

import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/space.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 300.h,
    child:ListView.separated(itemBuilder: (context,index){
      return  Container(
        height: 12.h,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
               Container(
                 height: 9.h,
                 width: 25.w,
                 child: CircleAvatar(
                   child: ClipRRect(borderRadius: BorderRadius.circular(15),child: Image.asset("images/payment.png",fit: BoxFit.cover,)),
                 ),
               ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: AppStrings.PAYMENT_SUCCESSFUL,fontSize: 13.sp,fontWeight: FontWeight.w900,),
                    Space(height: 1.h,),
                    CustomText(text: AppStrings.PAYMENT_CONFIRMATION,fontSize: 10.sp,),
                  ],
                ),
              )
            ],),
        ),);
    }, separatorBuilder: (contex,index){
      return SizedBox(height: 3.h,);
    }, itemCount: 2)

      ,);
  }
}

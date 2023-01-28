import 'package:e_learn/presentation/components/notification_card/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/config/app_strings.dart';
import '../../widgets/custom_text.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (context,index){
        return Container(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomText(text:AppStrings.TODAY,fontWeight: FontWeight.w900,fontSize: 12.sp,),
            NotificationCard(),
        ],));
      }),
    );
  }
}

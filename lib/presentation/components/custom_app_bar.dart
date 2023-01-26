import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'custom_avatar/custom_avatar.dart';
import 'notification_botton.dart';

class CustomAppBar extends StatelessWidget {
  int? notifNumber;
  CustomAppBar({
    Key? key,
    this.notifNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          CustomAvatar(name:'Rashad',myLevel: 'software engineering',),

          NotificationBotton(notifNumber: notifNumber,onTap: (){},)

        ],
      ),
    );
  }
}

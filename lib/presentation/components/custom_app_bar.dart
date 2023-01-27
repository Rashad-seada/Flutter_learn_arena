import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'custom_avatar/custom_avatar.dart';
import 'notification_botton.dart';

class CustomAppBar extends StatelessWidget {
  int? notifNumber;
  String name;
  String prof;
  Function()? onTapAvatar;
  Function()? onTapNotification;

  CustomAppBar({
    Key? key,
    required this.name,
    required this.prof,
    this.notifNumber,
    this.onTapAvatar,
    this.onTapNotification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.symmetric(vertical: 25,horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          InkWell(
              borderRadius: BorderRadius.circular(10.h),
              onTap: onTapAvatar,
              child: CustomAvatar(name:name,myLevel: prof,)),

          InkWell(
              borderRadius: BorderRadius.circular(10.h),
              onTap: onTapNotification,
              child: NotificationBotton(notifNumber: notifNumber,onTap: (){},),
          )

        ],
      ),
    );
  }
}

import 'package:e_learn/core/app_images.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart' as package;

class NotificationBotton extends StatelessWidget {
  Function()? onTap;
  int? notifNumber;

  NotificationBotton({
    Key? key,
    this.onTap,
    this.notifNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(13.w /2),
      child: Container(
        width: 8.w,
        height: 8.w,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),

        child: package.Badge(
          badgeContent: CustomText(text: (notifNumber == null)? "": notifNumber.toString(),color: Colors.white,),
          child: Image.asset(AppImages.notification,
            fit: BoxFit.fitHeight,
          ),
        ),

      ),
    );
  }
}

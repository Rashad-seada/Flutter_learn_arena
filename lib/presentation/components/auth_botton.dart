import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../core/config/app_strings.dart';
import '../widgets/custom_text.dart';
import '../widgets/space.dart';

class AuthBotton extends StatelessWidget {
  String text;
  String logo;
  AuthBotton({
    Key? key,
    required this.text,
    required this.logo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.center,
      width: 85.w,
      height: 6.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey,width: .1),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(20, 15),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.07),
            )
          ]
      ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(logo),
        Space(width: 2.w,),
        CustomText(
          text: AppStrings.google,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 10.sp,
        )
      ],
    ),
    );
  }
}

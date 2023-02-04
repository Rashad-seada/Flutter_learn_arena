import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../core/config/app_images.dart';
import '../../core/config/app_strings.dart';
import '../widgets/custom_text.dart';
import '../widgets/space.dart';

class CustomBackButton extends StatelessWidget {
  String? title ;
  Function()? onTap;
  CustomBackButton({
    Key? key,
    this.onTap,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: (){
              Navigator.pop(context);
              debugPrint('object');
            },
            icon: Image.asset(AppImages.backButton)
        ),
        (title == null)? SizedBox(): Space(width: 5.w,),
        (title == null)? SizedBox(): CustomText(text: title!,fontSize: 18.sp,),

      ],
    );
  }
}

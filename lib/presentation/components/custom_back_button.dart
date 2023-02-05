import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/custom_text.dart';
import '../widgets/space.dart';

class CustomBackButton extends StatelessWidget {
  String? title ;
  Color color;
  Function()? onTap;
  CustomBackButton({
    Key? key,
    this.color = Colors.black,
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
            },
            icon: Icon(Icons.arrow_back_rounded,color: color,)
        ),
        (title == null)? SizedBox(): Space(width: 5.w,),
        (title == null)? SizedBox(): CustomText(text: title!,fontSize: 18.sp,),

      ],
    );
  }
}

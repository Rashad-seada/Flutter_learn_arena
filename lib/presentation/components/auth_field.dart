import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AuthField extends StatelessWidget {
  String lable;
  String hint;

  AuthField({
    Key? key,
    this.lable = '',
    this.hint = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: lable,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
        ),

        Space(height: 1.2.h,),

        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.centerLeft,
          width: 85.w,
          height: 5.4.h,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,width: .2),
            borderRadius: BorderRadius.circular(80.w / 2),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(20, 15),
                blurRadius: 15,
                spreadRadius: 1,
                color: Colors.grey.withOpacity(0.07)
              )
            ]
          ),
          child: TextField(
            cursorColor: Colors.black54,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 9.sp,
                  color: Colors.grey
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none
              )
            ),
          ),
        ),
      ],
    );
  }
}

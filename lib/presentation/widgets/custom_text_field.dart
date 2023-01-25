import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatelessWidget {

  TextEditingController? controller;
  String? hint;
  Widget? prefixIcon;
  CustomTextField({
    Key? key,
    this.controller,
    this.hint,
    this.prefixIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black54,
      decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefixIcon,
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
    );
  }
}

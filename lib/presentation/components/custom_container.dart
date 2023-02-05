import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomContainer extends StatelessWidget {
  double width;
  double height;
  Widget child;
  CustomContainer({
    Key? key,
    this.width = 0,
    this.height = 0,
    this.child = const SizedBox()

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      width: width,
      height: height,
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
      child: child,
    );
  }
}

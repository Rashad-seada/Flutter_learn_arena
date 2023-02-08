import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  double? width;
  double? height;
  Widget? child;
  EdgeInsets? padding;
  EdgeInsets? margin;

  CustomContainer({
    Key? key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      alignment: Alignment.centerLeft,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                offset: Offset(10, 5),
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

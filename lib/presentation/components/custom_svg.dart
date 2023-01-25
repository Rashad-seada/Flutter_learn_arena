import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class CustomSvg extends StatelessWidget {
  String image;
  double height;
  double width;

  CustomSvg(
      this.image,
      {Key? key,
       this.height = 10,
       this.width = 10,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(image));
  }
}

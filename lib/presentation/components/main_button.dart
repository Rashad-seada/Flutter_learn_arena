import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../core/config/app_theme.dart';

class MainButton extends StatelessWidget {
  double? width;
  double? height;

  Widget child;
  Color color;
  Color borderColor;

  Function()? onTap;
  MainButton({
    Key? key,
    this.onTap,
    this.width,
    this.height,
    this.borderColor = AppTheme.primaryColor,
    this.color = AppTheme.primaryColor,

    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(85.w /2),
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(
            milliseconds: 500
        ),
          width: width,
        height: height,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(85.w /2),
            color: color
        ),
        child: child
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../core/app_theme.dart';

class MainBotton extends StatelessWidget {
  Widget child;
  Color color;
  Function()? onTap;
  MainBotton({
    Key? key,
    this.onTap,
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
        width: 85.w,
        height: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(85.w /2),
            color: color
        ),
        child: child
      ),
    );
  }
}

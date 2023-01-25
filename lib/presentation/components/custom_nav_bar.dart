import 'package:e_learn/core/app_strings.dart';
import 'package:e_learn/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

class CustomNavBar extends StatelessWidget {
  Function(int index)? onTabChange;
  CustomNavBar({
    Key? key,
    this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GNav(

      gap: 5,
      haptic: false,
      tabBorderRadius: 15,
      color: AppTheme.secondryColor,
      backgroundColor: Colors.white,
      activeColor: AppTheme.secondryColor,
      tabBackgroundColor: AppTheme.secondryColor.withOpacity(0.1),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      tabMargin: EdgeInsets.symmetric(vertical: 10,horizontal: 2.5.h),
      onTabChange: onTabChange,

      tabs: const [
        GButton(
            icon: (Icons.search),
            text: AppStrings.explore,
        ),
        GButton(
            icon: (Icons.book_outlined),
            text: AppStrings.learn,
        ),
        GButton(
            icon: (Icons.download_for_offline_outlined),
            text: AppStrings.downloads,
        ),


      ],
    );
  }
}

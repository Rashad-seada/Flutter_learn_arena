import 'package:flutter/material.dart';
import '../../core/config/app_theme.dart';
import 'custom_side_menu.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: AppTheme.secondryColor,
      elevation: 0.5,
      child: CustomSideMenu()
    );
  }
}

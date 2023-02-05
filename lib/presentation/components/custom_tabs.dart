import 'package:e_learn/core/config/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTabs extends StatelessWidget {
  List<Widget> tabs;
  List<Widget> pages;

  CustomTabs({
    Key? key,
    required this.tabs,
    required this.pages,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length ,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: const Divider(),
          ),
          TabBar(
              labelColor: AppTheme.primaryColor,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 3,
              padding: EdgeInsets.symmetric(horizontal: 7.w),
              indicatorColor: AppTheme.primaryColor,
              tabs: tabs
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: const Divider(),
          ),

          Expanded(
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              children: pages,
            ),
          ),

        ],
      ),
    );
  }

}

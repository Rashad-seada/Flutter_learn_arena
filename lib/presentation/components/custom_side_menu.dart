import 'package:flutter/material.dart';
import 'custom_avatar/custom_avatar.dart';

class CustomSideMenu extends StatelessWidget {
  const CustomSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 35),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomAvatar(
            name:"Rashad",
            nameColor: Colors.white,
            myLevelColor: Colors.white70,
            myLevel: "Software developer",),

        ],
      ),
    );
  }
}

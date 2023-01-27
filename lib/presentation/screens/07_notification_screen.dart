import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              CustomText(text: "Notification"),
            ],
          ),
        ),
     Space(height: 10,)

      ],
    ));
  }
}

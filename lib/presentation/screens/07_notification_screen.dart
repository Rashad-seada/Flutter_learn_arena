import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:e_learn/presentation/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  String? theDateOfTheNotification(){
    Intl.defaultLocale = 'es';
    DateFormat.jm().format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    theDateOfTheNotification();
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
        Space(
          height: 10,
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/play_animation_builder.dart';

class CustomAnimation extends StatelessWidget {
  Widget child;

  CustomAnimation({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PlayAnimationBuilder plays animation once
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 100.0, end: 200.0), // 100.0 to 200.0
      duration: const Duration(seconds: 2), // for 1 second
      curve: Curves.bounceInOut,
      builder: (context, value, _) {
        return Container(
          width: value,
          height: value,
          child: child,
        );
      },
      onCompleted: () {

      },
    );
  }
}

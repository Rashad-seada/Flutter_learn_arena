import 'dart:async';
import 'package:e_learn/presentation/components/custom_page_transition.dart';
import 'package:e_learn/presentation/screens/01_sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/app_images.dart';
import '../components/custom_animation.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
        () => Navigator.pushAndRemoveUntil(context, CustomPageTransition(SignInScreen()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          body: Center(
            child: CustomAnimation(child: SvgPicture.asset(AppImages.intro,height: 120,)),
          ),
        )
    );
  }
}

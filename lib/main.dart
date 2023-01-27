import 'package:e_learn/core/config/app_theme.dart';
import 'package:e_learn/presentation/blocs/main_layout/main_layout_cubit.dart';
import 'package:e_learn/presentation/screens/00_intro_screen.dart';
import 'package:e_learn/presentation/screens/07_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainLayoutCubit()),
      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                backgroundColor: AppTheme.bgColor
            ),
            home: NotificationScreen(),
          );
        },
      ),
    );
  }
}


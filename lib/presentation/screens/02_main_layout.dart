import 'package:e_learn/presentation/blocs/main_layout/main_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../components/custom_nav_bar.dart';

class MainLayout extends StatelessWidget {

  List<Widget> screens;
  List states;
  int currentIndex = 0;

  MainLayout({
    Key? key,
    required this.screens,
    required this.states
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainLayoutCubit, MainLayoutState>(
      listener: (context, state) {
      },

      builder: (context, state) {
        return Scaffold(

          body: AnimatedSwitcher(
            duration: Duration(milliseconds: 250),
            child: screens[currentIndex],
          ),

          bottomNavigationBar: CustomNavBar(
            onTabChange: (index) {
              currentIndex = index;
              context.read<MainLayoutCubit>().emit(states[currentIndex]);
            },
          ),
        );
      },
    );
  }
}

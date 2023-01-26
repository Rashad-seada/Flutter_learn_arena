import 'package:e_learn/presentation/blocs/main_layout/main_layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import '../components/custom_nav_bar.dart';
import '../components/custom_side_menu.dart';

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
        return SideMenu(
          type: SideMenuType.slideNRotate, // check above images
          key: context.read<MainLayoutCubit>().sideMenuKey,
          menu: const CustomSideMenu(),
          child: Scaffold(

            body: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: screens[currentIndex],
            ),

            bottomNavigationBar: CustomNavBar(
              onTabChange: (index) {
                currentIndex = index;
                context.read<MainLayoutCubit>().emit(states[currentIndex]);
              },
            ),
          ),
        );
      },
    );
  }
}

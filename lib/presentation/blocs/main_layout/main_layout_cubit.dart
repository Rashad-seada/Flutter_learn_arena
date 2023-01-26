import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

part 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutExplore());

  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();


}

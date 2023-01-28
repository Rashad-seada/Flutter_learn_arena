import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:meta/meta.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

part 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutExplore());

  final drawerController = AdvancedDrawerController();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();




}

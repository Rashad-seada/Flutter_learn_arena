import 'package:e_learn/core/config/app_strings.dart';
import 'package:e_learn/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../blocs/main_layout/main_layout_cubit.dart';
import '../components/courses_section/courses_section.dart';
import '../components/custom_app_bar.dart';
import '../components/custom_chip/custom_chip.dart';
import '../components/explore_courses_section/explore_courses_section.dart';
import '../components/groups_section/groups_section.dart';
import '../components/head_title/head_title.dart';
import '../components/instructors_section/instructor_section.dart';
import '../components/search_bar.dart';
import '../widgets/space.dart';
import '07_notification_screen.dart';


class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SafeArea(
        child: Scaffold(
          body: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [

              BlocConsumer<MainLayoutCubit, MainLayoutState>(
                listener: (context, state) {
                },
                builder: (context, state) {
                  return CustomAppBar(
                    onTapAvatar: (){
                      context.read<MainLayoutCubit>().scaffoldkey.currentState?.openDrawer();
                    },
                    onTapNotification: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
                    },
                    notifNumber: 1, name: 'Rashad', prof: "Software developer",
                  );
                },
              ),
              Space(height: 1.h,),

              HeadTitle(content: 'Find your favourite instructor here!',),

              Space(height: 4.h,),

              SearchBar(),

              Space(height: 0.5.h,),

              CustomChip(itemCount: 6,),

              Space(height: 3.h,),

              ExploreCoursesSection(),

              //GroupsSection(itemCount: 5,),

              Space(height: 2.h,),

            ],
          ),
        )
    );
  }
}
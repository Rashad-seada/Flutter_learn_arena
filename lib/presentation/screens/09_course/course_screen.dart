import 'package:e_learn/presentation/components/custom_back_button.dart';
import 'package:e_learn/presentation/components/custom_video_player.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';


class CourseScreen extends StatelessWidget {
  int id;
  CourseScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [

          SliverAppBar(
            leading: CustomBackButton(),
            expandedHeight: 40.h,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomVideoPlayer(
                videoPlayerController: VideoPlayerController.network(
                  "https://happy.videvo.net/videvo_files/video/premium/partners0238/large_watermarked/BB_cb8b156b-806f-4ff5-8e6b-f39f5ec1d3d2_preview.mp4",

                ),
              ),
              collapseMode: CollapseMode.pin,
            ),
          ),

        ],
      ),
    );
  }
}

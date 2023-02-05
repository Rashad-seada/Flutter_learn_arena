import 'package:e_learn/core/config/app_images.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool isLooping;

  CustomVideoPlayer({
    Key? key,
    required this.videoPlayerController,
    this.isLooping = false,
  }) : super(key: key);

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late ChewieController _controller;

  @override
  void initState() {
    _controller = ChewieController(
        videoPlayerController: widget.videoPlayerController,
        aspectRatio: 16/9,
        autoInitialize: true,
        looping: widget.isLooping,
        errorBuilder: (context,errorMessage) {
          return Center(
            child: Image.asset(AppImages.videoError),
          );
        }
    );
    super.initState();
  }

  @override
  void dispose() {
    widget.videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
        controller: _controller
    );
  }
}

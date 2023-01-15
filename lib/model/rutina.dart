import 'package:video_player/video_player.dart';

class Rutina {
  final String name;
  final Duration duration;
  final int noOfReps;
  final String videoUrl;
  VideoPlayerController? controller;

  Rutina({
    required this.name,
    required this.duration,
    required this.noOfReps,
    required this.videoUrl,
  });
}

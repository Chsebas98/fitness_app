import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:flutter/material.dart';

class RutinaIndScreen extends StatelessWidget {
  final String videoId = 'Fp0tRN2TEBc';

  const RutinaIndScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YoutubePlayerIFrame(
        controller: YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
          ),
        ),
        aspectRatio: 16 / 9,
      ),
    );
  }
}

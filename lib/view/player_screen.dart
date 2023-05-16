
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class YoutubeOverviewScreen extends StatelessWidget {
  YoutubeOverviewScreen({Key? key ,required this.youtubePlayerController})
      : super(key: key);

  YoutubePlayerController  youtubePlayerController;
  String? imgIconYoutube;
  String? IdYoutube = '';
  bool isInitialised = false;



  @override
  Widget build(BuildContext context) {



    if (!isInitialised) {

    }

    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);

        youtubePlayerController?.dispose();
        return true;
      },
      child: YoutubePlayer(
        controller: youtubePlayerController,
        showVideoProgressIndicator: true,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
        onReady: () {},
      ),
    );
  }


}

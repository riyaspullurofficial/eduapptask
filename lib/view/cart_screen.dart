import 'package:eduapptask/view/player_screen.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../constants/image_urls.dart';
import '../constants/strings.dart';

class DetailsView extends StatelessWidget {
  DetailsView({Key? key}) : super(key: key);
  YoutubePlayerController? youtubePlayerController;

  void initializeController({required String urlAPIYoutube}) {
    String updateUrl = makeFirstCaracterSmall(urlAPIYoutube);
    String? id = YoutubePlayer.convertUrlToId(updateUrl);
    print('URL IS $updateUrl');
    print('ID IS $id');
    if (id != null) {
      youtubePlayerController = YoutubePlayerController(
        initialVideoId: id,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ),
      );
    }
  }

  String makeFirstCaracterSmall(String url) {
    if (url.trim().isEmpty) return "";

    return "${url[0].toLowerCase()}${url.substring(1)}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Row(
            children: const [
              Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              )
            ],
          ),
        ),
        title: Row(
          children: [
            Text(
              'Recorded Classes',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18),
            ),
            Container(
              height: 25,
              width: 25,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              padding: EdgeInsets.all(3),
              child: Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.black,
                size: 20,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  book1,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width - 20,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Toney Kuriachan',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  adv,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      fontSize: 26),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(
                  height: 45,
                ),
                const Text(
                  '19/7/20',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '9.15 - 10.15am',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    var url = 'https://www.youtube.com/watch?v=AzO5Jup3H5o';
                    initializeController(urlAPIYoutube: url);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (cnx) => YoutubeOverviewScreen(
                                  youtubePlayerController:
                                      youtubePlayerController!,
                                )));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    color: Colors.black,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Buy',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700],
                                fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'AED 200',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

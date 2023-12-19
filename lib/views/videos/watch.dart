import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/utilities/fontstyle.dart';
import 'package:hisword/utilities/spacing.dart';
import 'package:iconly/iconly.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WatchVideo extends StatefulWidget {
  const WatchVideo({super.key});

  @override
  State<WatchVideo> createState() => _WatchVideoState();
}

class _WatchVideoState extends State<WatchVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoid =
        YoutubePlayer.convertUrlToId("https://youtu.be/0b91IaONFYQ");

    _controller = YoutubePlayerController(
      initialVideoId: videoid!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        // isLive: true
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // video view section

              orientation != Orientation.portrait
                  ? Expanded(
                      child: YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                      ),
                    )
                  : YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),

              // AspectRatio(
              //   aspectRatio: 16 / 9,
              //   child: 1 != 1
              //       ? Stack(
              //           children: [
              //             SizedBox(
              //               width: double.infinity,
              //               child: Image.network(
              //                 "https://spiritnerds.org/wp-content/uploads/2023/03/maxresdefault-6-1.png",
              //                 filterQuality: FilterQuality.low,
              //                 fit: BoxFit.cover,
              //               ),
              //             ),
              //             Center(
              //               child: Icon(
              //                 IconlyLight.play,
              //                 size: 70,
              //                 color: light.withOpacity(0.6),
              //               ),
              //             ),
              //           ],
              //         )
              //       : Expanded(
              //           child: YoutubePlayer(
              //             controller: _controller,
              //             showVideoProgressIndicator: true,
              //           ),
              //         ),
              // ),

              orientation == Orientation.portrait
                  ? Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // title section
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: h400(
                                "Sunday miracle service at when women pray, Abuja, with Apostle Michael Orokpo, 23/01/2023.",
                                align: TextAlign.left,
                                overflow: TextOverflow.visible,
                                size: 12,
                                color: light.withOpacity(0.9),
                              ),
                            ),

                            // date and views section
                            vertical(5),

                            Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.thumb_up_alt_outlined,
                                      color: light.withOpacity(0.7),
                                    ),
                                    horizontal(5),
                                    h400(
                                      "20",
                                      align: TextAlign.left,
                                      size: 10,
                                      color: light.withOpacity(0.5),
                                    ),
                                    horizontal(20),
                                    h400(
                                      "2,340 views, 3 min ago",
                                      align: TextAlign.left,
                                      size: 9,
                                      color: light.withOpacity(0.5),
                                    ),
                                  ],
                                )),

                            // download section
                            vertical(10),

                            Align(
                              alignment: Alignment.center,
                              child: TextButton.icon(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.vertical_align_bottom,
                                  color: light.withOpacity(0.6),
                                ),
                                label: h400("Dowload  Audio",
                                    color: light.withOpacity(0.6)),
                              ),
                            ),
                            vertical(10),

                            //description section

                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: h400(
                                "Have you been longing to download Apostle Michael Orokpo latest messages but it seems difficult? We are happy to inform you that we have more than 100 of his audio sermons. The messages are listed below.",
                                color: light.withOpacity(0.5),
                                align: TextAlign.left,
                                overflow: TextOverflow.visible,
                              ),
                            ),

                            // all comments section

                            vertical(10),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: h400(
                                "Comments",
                                color: light.withOpacity(0.7),
                              ),
                            ),

                            // list all comments

                            DynamicHeightGridView(
                              itemCount: 10,
                              crossAxisCount: 1,

                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              builder: (ctx, index) => ListTile(
                                leading: CircleAvatar(child: h500("E")),
                                title: h400(
                                  "@John Obi",
                                  size: 11,
                                  color: light.withOpacity(0.7),
                                  overflow: TextOverflow.visible,
                                  align: TextAlign.start,
                                ),
                                subtitle: h400(
                                  "Before your application can start to receive messages, you must enable push notifications and background modes in your Xcode project",
                                  size: 10,
                                  color: light.withOpacity(0.5),
                                  overflow: TextOverflow.visible,
                                  align: TextAlign.start,
                                ),
                              ),

                              // subtitle: Row(
                              //   children: [
                              //     buildiconbtn(IconlyLight.heart, () {}),
                              //   ],
                              // ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(),

              orientation == Orientation.portrait
                  ? TextField(
                      decoration: InputDecoration(
                        hintText: "Write comment here...",
                        suffixIcon: IconButton(
                          splashColor: transparent,
                          highlightColor: transparent,
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: light.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

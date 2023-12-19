import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/utilities/fontstyle.dart';
import 'package:hisword/utilities/spacing.dart';
import 'package:hisword/views/videos/watch.dart';
import 'package:iconly/iconly.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> img = [
    "https://overcomingdaily.org/wp-content/uploads/2022/11/DOMINION.png",
    "https://i.ytimg.com/vi/yMyHrPC3FJg/maxresdefault.jpg",
    "https://spiritnerds.org/wp-content/uploads/2023/03/maxresdefault-6-1.png",
    "https://spiritnerds.org/wp-content/uploads/2023/05/maxresdefault-3-1024x576.png",
    "https://spiritnerds.org/wp-content/uploads/2023/01/The-Voice-of-God-__-WAFBEC-2023-__-The-Covenant-Nation-__-Apostle-Joshua-Selman-mp3-image.png-1.webp",
    "https://spiritnerds.org/wp-content/uploads/2023/04/maxresdefault-2-1.png",
    "https://ancientmantles.com/wp-content/uploads/2023/01/Apostle-Michael-Orokpo-Messages_-2-things-you-must-do-to-open-your-spiritual-eyes-and-ears-0-2-screenshot.png",
    "https://i0.wp.com/impactconnect.com.ng/wp-content/uploads/2022/08/Witnesses-of-His-Resurrection-__-Peniel-2022-__-Apostle-Joshua-Selman-mp3-image.png?resize=640%2C470&ssl=1"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: dark,
        appBar: AppBar(
          title: const CircleAvatar(
            radius: 25,
            backgroundColor: transparent,
            backgroundImage: AssetImage("assets/icons/dove.png"),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: light,
                ),
              ),
            )
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: light.withOpacity(0.1),
              radius: 20,
              child: h500("JU", size: 18, color: light),
            ),
          ),
          centerTitle: true,
          backgroundColor: dark,
          automaticallyImplyLeading: false,
          elevation: 1,
        ),
        body: ListView.separated(
          itemBuilder: (context, i) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: light.withOpacity(0.1),
                      child: h400("HS", color: light),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: h400(
                          "@Apostle Joshua Selman",
                          align: TextAlign.left,
                          size: 15,
                          color: light.withOpacity(0.5),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: h400(
                          "Sunday miracle service, with aposle joshau selamn",
                          size: 13,
                          color: light.withOpacity(0.7),
                        ),
                      )
                    ],
                  )
                ],
              ),
              vertical(10),
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WatchVideo()),
                ),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          img[i],
                          filterQuality: FilterQuality.low,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        color: light.withOpacity(0.6),
                        width: 100,
                        height: 25,
                        child: h400("20/30/2023", color: dark),
                      ),
                      Center(
                        child: Icon(
                          IconlyLight.play,
                          size: 70,
                          color: light.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                          h400("2:44:0", align: TextAlign.left, color: light),
                    ),
                  ),
                  buildiconbtn(Icons.thumb_up_alt_outlined, () {}),
                  buildiconbtn(Icons.chat_rounded, () {}),
                  // buildiconbtn(IconlyLight.download, () {}),
                  buildiconbtn(Icons.bar_chart_rounded, () {}),
                ],
              )
            ],
          ),
          separatorBuilder: (context, i) =>
              Divider(color: light.withOpacity(0.5)),
          itemCount: img.length,
        ),
      ),
    );
  }
}

buildiconbtn(IconData icon, VoidCallback onTap) => InkWell(
      onTap: onTap,
      highlightColor: transparent,
      splashColor: transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: light.withOpacity(0.4),
            ),
            horizontal(2),
            h400("999+", size: 10, color: light.withOpacity(0.7)),
          ],
        ),
      ),
    );

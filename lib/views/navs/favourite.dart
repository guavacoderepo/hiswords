import 'package:flutter/material.dart';
import 'package:hisword/constants/colors.dart';
import 'package:hisword/utilities/fontstyle.dart';
import 'package:hisword/utilities/spacing.dart';
import 'package:iconly/iconly.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> with TickerProviderStateMixin {
  List<String> img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuh7viguuU5nhEMINVQd5B4wqSlANWiz2OKg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcbRbgO4vHnT5gN6UtObCJl7zG-OeJ7AEGuw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIKO4ESWykeJhXzabXVOfK44sK_AaCljwkFw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBMmuJbiyy0jv0bNCnLzfjoWMtL8J5j2V-3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOktQB2nfkqSHdsxp8uSNpvKn1P-15udNW4w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBMmuJbiyy0jv0bNCnLzfjoWMtL8J5j2V-3w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL-87HNnqWhcq7-YG9XtnI6aMGzPw-h63cZA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1Nx2TB74_j6KMqqPYUUaoR71jH-zVxw3tQ&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: dark,
        appBar: AppBar(
          title: TextField(
            style: const TextStyle(fontSize: 10, color: light),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: light),
                  borderRadius: BorderRadius.circular(15)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: light)),
              border: OutlineInputBorder(borderSide: BorderSide(color: light)),
              contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
            ),
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
                          color: light,
                        ),
                      )
                    ],
                  )
                ],
              ),
              vertical(10),
              AspectRatio(
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
                      color: light,
                      width: 100,
                      height: 25,
                      child: h400("20/30/2023"),
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
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child:
                          h400("2:44:0", align: TextAlign.left, color: light),
                    ),
                  ),
                  buildiconbtn(IconlyLight.heart, () {}),
                  buildiconbtn(IconlyLight.chat, () {}),
                  buildiconbtn(IconlyLight.download, () {}),
                  buildiconbtn(IconlyLight.chart, () {}),
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
              size: 24,
              color: light.withOpacity(0.4),
            ),
            horizontal(2),
            h400("999+", size: 10, color: light.withOpacity(0.7)),
          ],
        ),
      ),
    );

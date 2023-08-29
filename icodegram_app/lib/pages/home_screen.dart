import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icodegram_app/components/addstory.dart';
import 'package:icodegram_app/components/watchstory.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> stories = [
    AddStory(),
    WatchStory(name: 'Сараа'),
    WatchStory(name: 'Ханхүү'),
    WatchStory(name: 'Зулаа'),
    WatchStory(name: 'Хонгороо'),
    WatchStory(name: 'Сайхнаа'),
  ];
  List<Widget> posts = [
    Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/profile.png",
              width: 35,
              height: 35,
            ),
            Text("Төгөлдөр",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Image.asset(
          "assets/photo.png",
          width: 375,
          height: 375,
        )
      ],
    ),
    Column(children: [
      Row(
        children: [
          Column(
            children: [
              SvgPicture.asset(
                "assets/Like.svg",
                width: 20.90311622619629,
                height: 18.23182487487793,
              ),
            ],
          ),
        ],
      ),
    ]),
    Row(
      children: [
        Text(
          "joshua_l",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "Have a nice day",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
    Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/profile_pic.png",
              width: 35,
              height: 35,
            ),
            Text("Сарнай",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ))
          ],
        ),
        Image.asset(
          "assets/postpic.png",
          width: 375,
          height: 375,
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 130,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: stories.length,
                        itemBuilder: (context, index) {
                          return stories[index];
                        })),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return posts[index];
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: posts.length)
            ]))
          ],
        ),
      ),
    );
  }
}

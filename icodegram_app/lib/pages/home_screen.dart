import 'package:flutter/material.dart';
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
                  })
                ),
              ),
                  ListView.separated(
                    shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                      return posts[index];

                  }, separatorBuilder: (context, index) {
                    return const SizedBox(height: 10,);
                  }, itemCount: posts.length)
            ]))
          ],
        ),
      ),
    );
  }
}

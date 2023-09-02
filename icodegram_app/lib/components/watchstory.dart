import 'package:flutter/material.dart';

class WatchStory extends StatefulWidget {
  final String name;
  const WatchStory({super.key, required this.name});

  @override
  State<WatchStory> createState() => _WatchStoryState();
}

class _WatchStoryState extends State<WatchStory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 86,
      height: 94,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(1),
            height: 70,
            width: 70,
            child: TextButton(
              style: TextButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: () {},
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/profile.png",

                ),
                minRadius: 150,
                maxRadius: 300,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border: Border.all(color: Colors.orange, width: 2),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(widget.name)
        ],
      ),
    );
  }
}

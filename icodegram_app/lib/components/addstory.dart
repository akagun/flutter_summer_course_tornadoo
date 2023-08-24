import 'package:flutter/material.dart';

class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      width: 75,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add
              ),
            ),
          ),
          SizedBox(height: 5,),
          Text('Нэмэх')
        ],
      ),
    );
  }
}

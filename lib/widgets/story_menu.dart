import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/widgets/story_info.dart';

class StoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 25,
          child: Container(
            // color: Colors.red,
            child: StoryInfo(),
          ),
        ),
        Flexible(
          flex: 60,
          child: Container(
            color: Colors.greenAccent,
          ),
        ),
        Flexible(
          flex: 40,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

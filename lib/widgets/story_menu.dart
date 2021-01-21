import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:pandp/widgets/location_grid.dart';
import 'package:pandp/widgets/story_info.dart';
import 'package:provider/provider.dart';

class StoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 25,
          child: Container(
            child: StoryInfo(),
          ),
        ),
        Flexible(
          flex: 60,
          child: Container(
            color: Colors.black45,
            child: LocationsGrid(),
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


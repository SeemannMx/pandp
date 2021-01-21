import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/story.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return snapshot.hasData
              ? Markdown(data: snapshot.data)
              : Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetProvider>(builder: (context, widgetProvider, child) {
      return FutureBuilder(
          future: rootBundle.loadString("assets/story.md"),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            return snapshot.hasData
                ? Column(
              children: [
                Flexible(
                  flex: 10,
                  child: Container(
                    // color: Colors.yellow,
                    child: IconButton(
                      color: Colors.pink,
                      icon: Icon(Icons.clear),
                      onPressed: () {
                        widgetProvider.show(DISPLAY.MENU);
                      },
                    ),
                  ),
                ),
                Flexible(
                  flex: 90,
                  child: Container(
                    // color: Colors.red,
                    child: Markdown(data: snapshot.data),
                  ),
                ),
              ],
            )
                : Center(
              child: CircularProgressIndicator(),
            );
          });
    });
  }
}

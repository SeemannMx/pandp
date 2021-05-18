import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class StoryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WidgetProvider>(builder: (context, widgetProvider, child) {
      return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: MaterialButton(
          color: DARK,
          hoverColor: ACCENT_GREEN,
          child: FittedBox(fit: BoxFit.fill, child: Text('Story', style: TextStyle(color: DIRTY))),
          onPressed: () {
            widgetProvider.show(DISPLAY.STORY);
          },
        ),
      );
    });
  }
}

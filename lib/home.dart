import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/provider/provider_window.dart';
import 'package:pandp/widgets/chart.dart';
import 'package:pandp/widgets/control.dart';
import 'package:pandp/widgets/story.dart';
import 'package:pandp/widgets/story_info.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as dev;

class Home extends StatelessWidget {
  static String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WindowProvider>(builder: (context, windowProvider, child) {
        windowProvider.init(context);
        return Container(
          color: Colors.blueGrey,
          height: windowProvider.size.height,
          width: windowProvider.size.width,
          child: Row(
            children: [
              _left(context),
              _line(context),
              _right(context),
            ],
          ),
        );
      }),
    );
  }

  _left(BuildContext context) {
    return Flexible(
      flex: Provider.of<WindowProvider>(context).flexLeft,
      child: Container(
        // color: Colors.black87,
        child: Column(
          children: [
            Flexible(
              flex: 10,
              child: Control()
            ),
            Flexible(
              flex: 90,
              child: Container(
                color: Colors.black54,
                child: Chart(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _line(BuildContext context) {
    WindowProvider windowProvider = Provider.of<WindowProvider>(context);

    return GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails dragUpdate) =>
            windowProvider.update(context, dragUpdate),
        child: MouseRegion(
          child: Container(
              width: windowProvider.sliderWidth,
              color: windowProvider.dragContainerColor),
          onHover: (e) => windowProvider.hover(),
        ));
  }

  _right(BuildContext context) {
    return Flexible(
        flex: Provider.of<WindowProvider>(context).flexRight,
        child: Provider.of<WidgetProvider>(context).widget,
    );
  }
}

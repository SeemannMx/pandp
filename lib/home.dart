import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_window.dart';
import 'package:pandp/widgets/control.dart';
import 'package:pandp/widgets/story.dart';
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
              _left(windowProvider),
              _line(context, windowProvider),
              _right(context, windowProvider),
            ],
          ),
        );
      }),
    );
  }

  _left(WindowProvider windowProvider) {
    return Flexible(
      flex: windowProvider.flexLeft,
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
                child: image(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _line(BuildContext context, WindowProvider provider) {
    return GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails dragUpdate) =>
            provider.update(context, dragUpdate),
        child: MouseRegion(
          child: Container(
              width: provider.sliderWidth,
              color: provider.dragContainerColor),
          onHover: (e) => provider.hover(),
        ));
  }

  _right(BuildContext context, WindowProvider provider) {
    return Flexible(
      flex: provider.flexRight,
      child: Story()
    );
  }

  image(){
    return Center(child: Image(image: AssetImage('assets/chart.png')));
  }
}


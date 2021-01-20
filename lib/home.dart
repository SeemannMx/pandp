import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider_window.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  static String route = '/home';

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: HomePage.route);
    return Consumer <WindowProvider> (builder: (context, provider, child) {
      provider.init(context);
      return Container(
        color: Colors.blueGrey,
        height: provider.size.height,
        width: provider.size.width,
        child: Row(
          children: [
            _left(provider),
            _line(context, provider),
            _right(provider),
          ],
        ),
      );
    });
  }

  _left(WindowProvider provider){
    return Flexible(
      flex: provider.flexLeft,
      child: Container(
        color: Colors.black87,
      ),
    );
  }

  _line(BuildContext context, WindowProvider provider) {
    return GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails dragUpdate) =>
            provider.update(context, dragUpdate),
        child: MouseRegion(
          child: Container(width: provider.sliderWidth, color: provider.dragContainerColor),
          onHover: (e) => provider.hover(),
        ));
  }

  _right(WindowProvider provider) {
    return Flexible(
      flex: provider.flexRight,
      child: Container(
        color: Colors.black87,
      ),
    );
  }
}
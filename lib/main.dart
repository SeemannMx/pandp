import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

void main() {
  runApp(PandP());
}

class PandP extends StatelessWidget {
  static String id = '/root';

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: id);
    return MaterialApp(title: 'PandP', home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  static String route = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var flexLeft = 300;
  var flexRight = 300;
  var sliderWidth = 3.0;

  Size size;

  bool dragColorSwitch = true;
  Color dragContainerColor = Colors.blueGrey;

  Widget dragItem = Icon(Icons.switch_left);

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: HomePage.route);
    size = MediaQuery.of(context).size;
    sliderWidth = size.width * 0.0025;

    return Container(
      color: Colors.blueGrey,
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Flexible(
            flex: flexLeft,
            child: Container(
              color: Colors.black87,
            ),
          ),
          GestureDetector(
              onHorizontalDragUpdate: (DragUpdateDetails update) =>
                  _update(context, update),
              child: MouseRegion(
                child: Container(width: sliderWidth, color: dragContainerColor),
                onHover: (e) => _hover(),
              )),
          Flexible(
            flex: flexRight,
            child: Container(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  _hover() {
    dev.log('hover', name: HomePage.route);

    setState(() {
      if (dragColorSwitch) {
        dragContainerColor = Colors.pink;
      } else {
        dragContainerColor = Colors.blueGrey;
      }
      dragColorSwitch = !dragColorSwitch;
    });
  }

  _update(BuildContext context, DragUpdateDetails update) {
    RenderBox getBox = context.findRenderObject();
    var local = getBox.globalToLocal(update.globalPosition);

    setState(() {
      var max = size.width;
      flexRight = (max - local.dx).round();
      flexLeft = (max - flexRight).round();
    });

    // dev.log('${local.dx} ${local.dy}', name: HomePage.route);
  }
}

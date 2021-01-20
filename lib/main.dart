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

    return MaterialApp(
      title: 'PandP',
      home: HomePage()
    );
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

  Size size;

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: HomePage.route);
    size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black45,
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Flexible(
            flex: flexLeft,
            child: Container(
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            onHorizontalDragStart: (DragStartDetails start) => _start(context, start),
            onHorizontalDragUpdate: (DragUpdateDetails update) => _update(context, update),
            // onHorizontalDragEnd: _end(),
            child: Container(
              width: 100,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: flexRight,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

  _start(BuildContext context, DragStartDetails start){
    // dev.log('start', name: HomePage.route);

    RenderBox getBox = context.findRenderObject();
    var local = getBox.globalToLocal(start.globalPosition);

    // dev.log('start ${local.dx} , ${local.dy}', name: HomePage.route);
  }

  _end(BuildContext context){
    dev.log('end', name: HomePage.route);
  }

  _update(BuildContext context, DragUpdateDetails update){

    RenderBox getBox = context.findRenderObject();
    var local = getBox.globalToLocal(update.globalPosition);

    setState(() {
      var max = size.width;
      // dev.log('update left : $max - ${local.dx} = $flexLeft ', name: HomePage.route);
      // dev.log('update right: $max - $flexLeft   = $flexRight ', name: HomePage.route);

      flexRight = (max - local.dx).round();
       flexLeft = (max - flexRight).round();
    });

    dev.log('update ${local.dx}', name: HomePage.route);
  }
}

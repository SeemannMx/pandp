import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        height: size.height / 2,
        width: size.width / 2,
        child: Center(
            child: Text('no data found',
                style: TextStyle(
                  color: Colors.black54,
                ))));
  }
}

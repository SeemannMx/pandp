import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/widgets/clock.dart';
import 'package:pandp/widgets/search.dart';

class Control extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Row(
        children: [
          Flexible(
              flex: 50,
              fit: FlexFit.tight,
              child: Clock()
          ),
          Flexible(
              flex: 50,
              fit: FlexFit.tight,
              child: Search()
          ),
        ],
      ),
    );
  }
}
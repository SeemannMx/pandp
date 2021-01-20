import 'package:flutter/material.dart';

void main() {
  runApp(PandP());
}

class PandP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PandP',
      home: _content()
    );
  }

  _content(){
    return Container();
  }
}
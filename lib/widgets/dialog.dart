import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Material Dialog"),
      content: Text("Hey! I'm Coflutter!"),
      actions: <Widget>[
        FlatButton(
          child: Text('Close me!'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

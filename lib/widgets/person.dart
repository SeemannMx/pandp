import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

class CustomPersonTile extends StatefulWidget {

  final Person person;

  CustomPersonTile({@required this.person});

  @override
  _CustomPersonTileState createState() => _CustomPersonTileState();
}

class _CustomPersonTileState extends State<CustomPersonTile> {

  @override
  Widget build(BuildContext context) {

    return OutlineButton(
      child: Text(widget.person.name.toString().cutName()),
      hoverColor: Colors.teal,
      onPressed: () {
        widget.person.callback();

        showDialog(
            context: context,
            builder: (_) => CustomDialog()
        );
      },
    );
  }
}

class Person {
  PERSON name;
  VoidCallback callback;
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/extentions.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:provider/provider.dart';

class CustomPersonTile extends StatefulWidget {
  final Person person;

  CustomPersonTile({@required this.person});

  @override
  _CustomPersonTileState createState() => _CustomPersonTileState();
}

class _CustomPersonTileState extends State<CustomPersonTile> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: Text(
        widget.person.name.toString().cutName(),
        style: TextStyle(color: DIRTY),
      ),
      onPressed: () {
        Provider.of<PersonProvider>(context, listen: false).person = widget.person;
        widget.person.callback();
      },
    );
  }
}

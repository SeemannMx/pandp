import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/provider/provider_person.dart';
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
      child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(widget.person.name.toString().cutName(), style: GoogleFonts.abel(
              color: DIRTY,
              fontSize: double.maxFinite
          ),)),
      hoverColor: ACCENT_GREEN,
      onPressed: () {
        Provider.of<PersonProvider>(context, listen: false).person = widget.person;
        widget.person.callback();
      },
    );
  }
}

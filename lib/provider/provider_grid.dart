import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class GridProvider extends ChangeNotifier {

  List <Widget> personas = [];
  Widget widget;
  int counter = 26;

  GridProvider() {
    while(counter > 0) {
      widget = OutlineButton(
        hoverColor: Colors.teal,
        onPressed: () { dev.log('person $counter', name: this.runtimeType.toString()); },
        child: Text('Person $counter',
            style: GoogleFonts.abel(
                color: Colors.white,
            )
        ),
      );
      personas.add(widget);
      counter--;
    }
  }
}
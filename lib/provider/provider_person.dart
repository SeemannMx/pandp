import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/person.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';
import 'dart:developer' as dev;

enum PERSON { HUGO, VANESSA, GIOVANNI }

class PersonProvider extends ChangeNotifier {
  List<Widget> personas = [];
  Widget _widget;

  PERSON name;
  VoidCallback callback;

  initPersons(BuildContext context) {
    personas.clear();

    Person person = Person();
    person..name = PERSON.HUGO..callback = () { _personsDialog(context); };
    _widget = CustomPersonTile(person: person);
    personas.add(_widget);

  }

  _personsDialog(BuildContext context) {
    dev.log('person clicked', name: this.runtimeType.toString());
    // Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.DIALOG);
  }
}
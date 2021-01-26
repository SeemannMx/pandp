import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:pandp/widgets/person_tile.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';
import 'dart:developer' as dev;

enum PERSON { HUGO, VANESSA, GIOVANNI }

class PersonProvider extends ChangeNotifier {

  List<Widget> personas = [];
  Person person;
  String assetsPath;

  initPersons(BuildContext context) {
    if (personas.isNotEmpty) return;

    personas.clear();
    personas
      ..add(CustomPersonTile(
          person: _createPerson(PERSON.HUGO, () {
        _personsDialog(context);
      })))
      ..add(CustomPersonTile(
          person: _createPerson(PERSON.VANESSA, () {
        _personsDialog(context);
      })))
      ..add(CustomPersonTile(
          person: _createPerson(PERSON.GIOVANNI, () {
        _personsDialog(context);
      })));
  }

  Person _createPerson(PERSON name, VoidCallback callback) {
    person = Person();
    return person
      ..name = name
      ..callback = callback;
  }

  _personsDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: SCAFFOLD_KEY.currentContext,
      builder: (BuildContext context) {
        return CustomDialog();
      },
    );
  }

  buildAssetsPathForPerson(){
    var personName = person.name.toString().cutName().toLowerCase();
    assetsPath = "assets/story_person/story_$personName.md";
  }
}

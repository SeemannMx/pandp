import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:pandp/globals.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:pandp/widgets/person_tile.dart';
import 'package:pandp/extentions.dart';

class PersonProvider extends ChangeNotifier {
  List<String> personNames = [
    'Hugo',
    'Vanessa',
    'Giovanni',
    'Frederik',
    'Aegir',
    'Alpha',
    'Antonio',
    'Francesco',
    'Gunnar',
    'Gustavson',
    'Heinrich',
    'Markus',
    'Valentina'
  ];
  List<Widget> personas = [];
  Person person;
  String assetsPath;

  initPersons(BuildContext context) {
    if (personas.isNotEmpty) return;

    personNames.forEach((name) {
      dev.log(name.toString(), name: this.runtimeType.toString());
      personas.add(CustomPersonTile(
          person: _createPerson(name, () {
        _personsDialog(context);
      })));
    });
  }

  Person _createPerson(String name, VoidCallback callback) {
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

  buildAssetsPathForPerson() {
    var personName = person.name.toString().cutName().toLowerCase();
    assetsPath = "assets/story_person/story_$personName.md";
  }
}

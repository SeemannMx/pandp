import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/person_tile.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';
import 'dart:developer' as dev;

enum PERSON { HUGO, VANESSA, GIOVANNI }

class PersonProvider extends ChangeNotifier {
  List<Widget> personas = [];
  Person person;

  initPersons(BuildContext context) {
    if (personas.isEmpty) {
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
      dev.log('new init', name: this.runtimeType.toString());
    } else {
      dev.log('list is NOT empty', name: this.runtimeType.toString());
    }

    dev.log(personas.length.toString() ,
        name: this.runtimeType.toString());
  }

  Person _createPerson(PERSON name, VoidCallback callback) {
    person = Person();
    return person
      ..name = name
      ..callback = callback;
  }

  _personsDialog(BuildContext context) {
    dev.log('person clicked ${person.name.toString()}',
        name: this.runtimeType.toString());
  }
}

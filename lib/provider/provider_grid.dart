import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

enum PERSON {
  HUGO,
  VANESSA,
  GIOVANNI
}

class Person {

  PERSON name;
  VoidCallback callback;

}

class PersonProvider extends ChangeNotifier {

  List <Widget> personas = [];
  Person person = Person();

  PersonProvider() {
    _addPersons();

    notifyListeners();
  }

  _addPersons(){
    PERSON.values.forEach((p) {
      person.name = p;
      person.callback = null;
      personas.add(_getButton(person));
    });
  }

  _getButton(Person person) {
    return OutlineButton(
        child: Text(person.name.toString().cutName()),
        hoverColor: Colors.teal,
        onPressed: person.callback,
    );
  }

  _show(PERSON person) {
    switch(person) {
      case PERSON.HUGO: {

        }
        break;
      case PERSON.VANESSA: {

      }
      break;
      case PERSON.GIOVANNI: {

      }
      break;
    }
  }
}


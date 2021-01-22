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
      personas.add(_getButton(person.name));
    });
  }

  _getButton(PERSON person) {
    return OutlineButton(
        child: Text(person.toString().cutName()),
        hoverColor: Colors.teal,
        onPressed: () {_setCallback(person);},
    );
  }

  _setCallback(PERSON personCallback) {
    switch(personCallback) {
      case PERSON.HUGO: {
        dev.log(personCallback.toString(), name: this.runtimeType.toString());
        

        }
        break;
      case PERSON.VANESSA: {
        dev.log(personCallback.toString(), name: this.runtimeType.toString());
      }
      break;
      case PERSON.GIOVANNI: {
        dev.log(personCallback.toString(), name: this.runtimeType.toString());
      }
      break;
    }

    notifyListeners();
  }
}


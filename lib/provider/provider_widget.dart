import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/widgets/dialog.dart';
import 'dart:developer' as dev;

import 'package:pandp/widgets/personas.dart';
import 'package:pandp/widgets/story.dart';
import 'package:pandp/widgets/story_menu.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

enum DISPLAY {
  MENU,
  STORY,

  // Region
  SIEDLUNG,
  NEU_ANFANG,
  NEU_FARMLAND,
  NORD_WALL,
  WEST_DEFENSE,
  RHIN_HAFEN,
  SPEZIAL,

  // Personen
  PERSON,
  DIALOG
}

class WidgetProvider extends ChangeNotifier {

  Widget widget = StoryMenu();
  bool isDisplayed = false;

  show(DISPLAY type){

    switch(type) {
      case DISPLAY.MENU: {
        widget = StoryMenu();
      }
      break;

      case DISPLAY.STORY: {
        widget = Story();
      }
      break;

      case DISPLAY.SIEDLUNG: {
        widget = _test();
      }
      break;

      case DISPLAY.NEU_ANFANG: {
        widget = _test();
      }
      break;

      case DISPLAY.NEU_FARMLAND: {
        widget = _test();
      }
      break;

      case DISPLAY.WEST_DEFENSE: {
        widget = _test();
      }
      break;

      case DISPLAY.NORD_WALL: {
        widget = _test();
      }
      break;

      case DISPLAY.RHIN_HAFEN: {
        widget = _test();
      }
      break;

      case DISPLAY.SPEZIAL: {
        widget = _test();
      }
      break;

      case DISPLAY.PERSON: {
        widget = Personas();
      }
      break;
    }
    notifyListeners();
  }

  Widget _test(){
    return Column(
      children: [
        Flexible(
          flex: 10,
          child: Container(
            child: IconButton(
              color: Colors.pink,
              icon: Icon(Icons.clear),
              onPressed: () {
                show(DISPLAY.MENU);
              },
            ),
          ),
        ),
        Flexible(
          flex: 90,
          child: Container(
            child: Placeholder(),
          ),
        ),
      ],
    );
  }
}


import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:intl/intl.dart';
import 'package:pandp/home.dart';
import 'package:pandp/widgets/story.dart';
import 'package:pandp/widgets/story_menu.dart';

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
  PERSON
}

class WidgetProvider extends ChangeNotifier {

  Widget widget = StoryMenu();

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
        widget = _test();
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

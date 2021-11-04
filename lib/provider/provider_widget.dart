import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/widgets/chapter.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:pandp/widgets/location.dart';
import 'dart:developer' as dev;

import 'package:pandp/widgets/personas.dart';
import 'package:pandp/widgets/story.dart';
import 'package:pandp/widgets/story_menu.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

enum DISPLAY {
  MENU,
  STORY,
  CHAPTER,
  LOCATION,
  SPEZIAL,
  PERSON,
}

class WidgetProvider extends ChangeNotifier {
  Widget widget = StoryMenu();
  bool isDisplayed = false;

  show(DISPLAY type) {
    switch (type) {
      case DISPLAY.MENU:
        {
          widget = StoryMenu();
        }
        break;

      case DISPLAY.STORY:
        {
          widget = Story();
        }
        break;

      case DISPLAY.CHAPTER:
        {
          widget = Chapter();
        }
        break;

      case DISPLAY.LOCATION:
        {
          widget = Location();
        }
        break;

      case DISPLAY.SPEZIAL:
        {
          widget = _test();
        }
        break;

      case DISPLAY.PERSON:
        {
          widget = Personas();
        }
        break;
    }
    notifyListeners();
  }

  Widget _test() {
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

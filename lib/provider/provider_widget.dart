import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:intl/intl.dart';
import 'package:pandp/home.dart';
import 'package:pandp/widgets/story.dart';
import 'package:pandp/widgets/story_menu.dart';

enum DISPLAY{
  MENU,
  STORY,
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

      default: {
        //statements;
      }
      break;
    }

    notifyListeners();
  }
}

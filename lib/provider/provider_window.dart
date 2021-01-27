import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:pandp/globals.dart';

class WindowProvider extends ChangeNotifier {
  Size size;

  var flexLeft = 300;
  var flexRight = 300;
  var sliderWidth = 3.0;

  bool dragColorSwitch = true;
  Color dragContainerColor = ACCENT_GREEN;

  Widget dragItem = Icon(Icons.switch_left);
  RenderBox _getBox;
  Offset _local;

  String timeString = DateTime.now().toString();

  init(BuildContext context) {
    size = MediaQuery.of(context).size;
    sliderWidth = size.width * 0.0035;
  }

  hover() {
    if (dragColorSwitch) {
      dragContainerColor = ACCENT_RED;
    } else {
      dragContainerColor = ACCENT_GREEN;
    }
    dragColorSwitch = !dragColorSwitch;
    notifyListeners();
  }

  update(BuildContext context, DragUpdateDetails update) {
    _getBox = context.findRenderObject();
    _local = _getBox.globalToLocal(update.globalPosition);

    flexRight = (size.width - _local.dx).round();
    flexLeft = (size.width - flexRight).round();

    if (flexLeft <= 50) flexLeft = 50;
    if (flexRight <= 50) flexRight = 50;

    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class CustomImageProvider extends ChangeNotifier {
  var images = [];
  var locations = [];
  var widget;

  CustomImageProvider() {
    _load();
  }

  _load() {
    _addChart();
    _addLocations();

    notifyListeners();
  }

  _addChart() {
    images.add(Image(image: AssetImage('assets/img/chart.png')));
  }

  _addLocations() {
    int value = 25;

    locations
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_siedlung.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_neu_anfang.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_neu_farmland.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_nord_wall.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_rhin_hafen.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_spezial_einheit.png'))))
      ..add(_getWappen(value ,Image(image: AssetImage('assets/img/wappen_west_defense.png'))));
  }

  _getWappen(int flex, Widget child){
    return Flexible(
        flex: flex,
        fit: FlexFit.tight,
        child: Container(
            child: child
        ));
  }
}

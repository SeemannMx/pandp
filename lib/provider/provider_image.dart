import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class CustomImageProvider extends ChangeNotifier {
  List <Widget> images = [];
  List <Widget> locations = [];

  CustomImageProvider() {
    _addChart();
    _addLocations();

    notifyListeners();
  }

  _addChart() {
    images.add(Image(image: AssetImage('assets/img/chart.png')));
  }

  _addLocations() {
    locations
      ..add(Image(image: AssetImage('assets/img/wappen_siedlung.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_neu_anfang.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_neu_farmland.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_west_defense.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_nord_wall.png')))
      ..add(Placeholder())
      ..add(Image(image: AssetImage('assets/img/wappen_rhin_hafen.png')))
      ..add(Placeholder())
      ..add(Placeholder())
      ..add(Placeholder())
      ..add(Placeholder())
      ..add(Image(image: AssetImage('assets/img/wappen_spezial_einheit.png')));
  }
}





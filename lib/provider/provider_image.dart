import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class CustomImageProvider extends ChangeNotifier {

  var images = [];
  var locations = [];

  CustomImageProvider() {_load();}

  _load() {
    images.add(Image(image: AssetImage('assets/img/chart.png')));

    locations.add(Image(image: AssetImage('assets/img/wappen_siedlung.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_neu_anfang.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_neu_farmland.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_nord_wall.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_rhin_hafen.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_spezial_einheit.png')));
    locations.add(Image(image: AssetImage('assets/img/wappen_west_defense.png')));

    notifyListeners();
  }
}

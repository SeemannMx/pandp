import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

class CustomImageProvider extends ChangeNotifier {

  var images = [];

  CustomImageProvider() {
    dev.log('start', name: this.runtimeType.toString());
    _load();
  }

  _load() {
    dev.log('load', name: this.runtimeType.toString());
    images.add(Image(image: AssetImage('assets/chart.png')));
    images.add(Image(image: AssetImage('assets/chart.png')));
    images.add(Image(image: AssetImage('assets/chart.png')));
    images.add(Image(image: AssetImage('assets/chart.png')));

    notifyListeners();
  }
}

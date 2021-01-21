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
    images.add(Image(image: AssetImage('assets/img/chart.png')));

    /* Todo remove
    images.add(Image(image: AssetImage('assets/img/label_alpha.png')));
    images.add(Image(image: AssetImage('assets/img/label_bravo.png')));
    images.add(Image(image: AssetImage('assets/img/label_charly.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_neu_anfang.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_neu_farmland.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_nord_wall.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_rhin_hafen.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_siedlung.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_spezial_einheit.png')));
    images.add(Image(image: AssetImage('assets/img/wappen_west_defense.png')));
     */

    notifyListeners();
  }
}

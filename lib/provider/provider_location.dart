import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:pandp/globals.dart';
import 'package:pandp/model/person.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:pandp/widgets/person_tile.dart';
import 'package:pandp/extentions.dart';

class LocationProvider extends ChangeNotifier {
  List<String> locationNames = [
    'Siedlung',
  ];

  var location = 'dummy';
  var assetsPath;

  LocationProvider(){
    buildAssetsPathForLoaction();
  }

  buildAssetsPathForLoaction() {
    assetsPath = "assets/$location.md";
  }
}


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
    'Siedlung','Neu_Anfang','Neu_Farmland', 'West_Defense', 'Nord_Wall', 'Gates', 'Hafen', 'Strand', 'Wald', 'Berge'
  ];

  var location = 'dummy';
  var assetsPath;

  LocationProvider(){
    location = 'Siedlung';
    location = 'Neu_Anfang';

    buildAssetsPathForLoaction();
  }

  buildAssetsPathForLoaction() {
    assetsPath = ("assets/story_location/story_$location.md").toLowerCase();
  }
}


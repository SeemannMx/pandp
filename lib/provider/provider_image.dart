import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'dart:developer' as dev;

import 'package:provider/provider.dart';

class CustomImageProvider extends ChangeNotifier {
  List<Widget> images = [];
  List<Widget> locations = [];

  CustomImageProvider() {
    _addChart();
    _addLocations();

    notifyListeners();
  }

  _addChart() {
    images
      ..add(Image(image: AssetImage('assets/img/chart.png')))
      ..add(Image(image: AssetImage('assets/img/img_neu_anfang.png')))
      ..add(Image(image: AssetImage('assets/img/img_neu_anfang_invade.png')))
      ..add(Image(image: AssetImage('assets/img/img_neu_farmland.png')))
      ..add(Image(image: AssetImage('assets/img/img_neu_farmland_I.png')))
      ..add(Image(image: AssetImage('assets/img/img_nord_wall.png')))
      ..add(Image(image: AssetImage('assets/img/img_west_defense.png')))
      ..add(Image(image: AssetImage('assets/img/img_hafen.png')))
      ..add(Image(image: AssetImage('assets/img/img_berge.png')))
      ..add(Image(image: AssetImage('assets/img/img_wood_cabin.png')));
  }

  _addLocations() {
    locations
      ..add(Image(image: AssetImage('assets/img/wappen_siedlung.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_neu_anfang.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_neu_farmland.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_west_defense.png')))
      ..add(Image(image: AssetImage('assets/img/wappen_nord_wall.png')))
      ..add(Center(child: Text('Gates', style: GoogleFonts.abel(color: DIRTY))))
      ..add(Image(image: AssetImage('assets/img/wappen_rhin_hafen.png')))
      ..add(Center(child: Text('Strand', style: GoogleFonts.abel(color: DIRTY))))
      ..add(Center(child: Text('Wald', style: GoogleFonts.abel(color: DIRTY))))
      ..add(Center(child: Text('Berge', style: GoogleFonts.abel(color: DIRTY))))
      ..add(Image(image: AssetImage('assets/img/wappen_spezial_einheit.png')));
  }
}

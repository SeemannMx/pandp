import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'dart:math';

class DiceProvider extends ChangeNotifier {

  String result = '42';

  roll([int range = 100]){
    result = Random().nextInt(range).toString();
    notifyListeners();
  }
}

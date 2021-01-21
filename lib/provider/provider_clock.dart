import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:intl/intl.dart';

class LiveClockProvider extends ChangeNotifier {
  String timeString = '08:00';
  Timer timer;

  run() {
    if (timer == null || !timer.isActive) {
      dev.log('start live clock', name: this.runtimeType.toString());
      timeString = DateFormat('hh:mm:ss').format(DateTime.now());

      timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
        timeString = DateFormat('hh:mm:ss').format(DateTime.now());

        notifyListeners();
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}

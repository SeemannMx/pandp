import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pandp/home.dart';
import 'package:pandp/provider_window.dart';
import 'dart:developer' as dev;

import 'package:provider/provider.dart';

void main() {
  runApp(PandP());
}

class PandP extends StatelessWidget {
  static String id = '/root';

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: id);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WindowProvider())
      ],
        child: MaterialApp(title: 'PandP', home: Home())
    );
  }
}


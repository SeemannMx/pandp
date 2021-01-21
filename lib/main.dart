import 'package:flutter/material.dart';
import 'package:pandp/home.dart';
import 'package:pandp/provider/provider_clock.dart';
import 'package:pandp/provider/provider_window.dart';

import 'package:provider/provider.dart';

void main() => runApp(PandP());

class PandP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => WindowProvider()),
      ChangeNotifierProvider(create: (_) => LiveClockProvider())
    ], child: MaterialApp(title: 'PandP', home: Home()));
  }
}

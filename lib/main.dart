import 'package:flutter/material.dart';
import 'package:pandp/home.dart';
import 'package:pandp/provider/provider_clock.dart';
import 'package:pandp/provider/provider_grid.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/provider/provider_window.dart';

import 'package:provider/provider.dart';

void main() => runApp(PandP());

class PandP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => WindowProvider()),
      ChangeNotifierProvider(create: (_) => LiveClockProvider()),
      ChangeNotifierProvider(create: (_) => CustomImageProvider()),
      ChangeNotifierProvider(create: (_) => WidgetProvider()),
      ChangeNotifierProvider(create: (_) => GridProvider()),
    ], child: MaterialApp(title: 'PandP', home: Home()));
  }
}

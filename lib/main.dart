import 'package:flutter/material.dart';
import 'package:pandp/home.dart';
import 'package:pandp/provider/provider_clock.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:pandp/provider/provider_location.dart';
import 'package:pandp/provider/provider_person.dart';
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
      ChangeNotifierProvider(create: (_) => PersonProvider()),
      ChangeNotifierProvider(create: (_) => LocationProvider()),
    ], child: MaterialApp(title: 'PandP', home: Home()));
  }
}

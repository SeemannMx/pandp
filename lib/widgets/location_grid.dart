import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:pandp/provider/provider_location.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';
import 'dart:developer' as dev;

class LocationsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: [
          _getButton(context, 0),
          _getButton(context, 1),
          _getButton(context, 2),
          _getButton(context, 3),
          _getButton(context, 4),
          _getButton(context, 5),
          _getButton(context, 6),
          _getButton(context, 7),
          _getButton(context, 8),
          _getButton(context, 9),
        ]);
  }

  _getButton(BuildContext context, int index) {
    return OutlineButton(
        child: Provider.of<CustomImageProvider>(context).locations[index],
        hoverColor: ACCENT_GREEN,
        onPressed: () {
          Provider.of<LocationProvider>(context, listen: false)
              .buildAssetsPathForLoaction(index);
          Provider.of<WidgetProvider>(context, listen: false)
              .show(DISPLAY.LOCATION);
        });
  }
}

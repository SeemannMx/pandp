import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_image.dart';
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
        crossAxisCount: 3,
        children: [
          OutlineButton(
            child: Provider.of<CustomImageProvider>(context).locations[0],
            hoverColor: Colors.teal,
            onPressed: () {
              Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.SIEDLUNG);
            }
          ),

          OutlineButton(
              child: Provider.of<CustomImageProvider>(context).locations[1],
              hoverColor: Colors.teal,
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.NEU_ANFANG);
              }
          ),

          OutlineButton(
              child: Provider.of<CustomImageProvider>(context).locations[2],
              hoverColor: Colors.teal,
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.NEU_FARMLAND);
              }
          ),

          OutlineButton(
              child: Provider.of<CustomImageProvider>(context).locations[3],
              hoverColor: Colors.teal,
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.NORD_WALL);
              }
          ),

          OutlineButton(
              child: Provider.of<CustomImageProvider>(context).locations[4],
              hoverColor: Colors.teal,
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.WEST_DEFENSE);
              }
          ),

          OutlineButton(
              child: Provider.of<CustomImageProvider>(context).locations[5],
              hoverColor: Colors.teal,
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.RHIN_HAFEN);
              }
          ),

        ]);
  }
}

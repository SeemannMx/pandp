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
    var locationProvider = Provider.of<LocationProvider>(context, listen: false);
    var widgetProvider = Provider.of<WidgetProvider>(context, listen: false);

    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        children: _getLoactionsGrid(context)
    );
  }

  _getLoactionsGrid(BuildContext context){
    List<Widget> list = [];

    for(int i = 0; i < Provider.of<LocationProvider>(context, listen: false).locationNames.length ; i++){
      list.add(_getButton(context, i));
    }

    return list;
  }

  _getButton(BuildContext context, int index) {
    return OutlineButton(
        child: Provider.of<CustomImageProvider>(context).locations[index],
        hoverColor: ACCENT_GREEN,
        onPressed: () {
          Provider.of<LocationProvider>(context, listen: false).buildAssetsPathForLoaction(index);
          Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.LOCATION);
        }
    );
  }
}

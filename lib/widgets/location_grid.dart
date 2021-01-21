import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:provider/provider.dart';

class LocationsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomImageProvider>(
        builder: (context, imageProvider, child) {
      int flex = 20;
      return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Flexible(flex: 5, child: Container()),
        imageProvider.locations[0],
        Flexible(flex: 5, child: Container()),
        Flexible(
          flex: flex,
          child: Column(
            children: [
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[1],
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[2],
              Flexible(flex: 10, child: Container()),
            ],
          ),
        ),
        Flexible(flex: 5, child: Container()),
        Flexible(
          flex: flex,
          child: Column(
            children: [
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[3],
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[4],
              Flexible(flex: 10, child: Container()),
            ],
          ),
        ),
        Flexible(flex: 5, child: Container()),
        Flexible(
          flex: flex,
          child: Column(
            children: [
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[5],
              Flexible(flex: 10, child: Container()),
              imageProvider.locations[6],
              Flexible(flex: 10, child: Container()),
            ],
          ),
        ),
        Flexible(flex: 5, child: Container()),
      ]);
    });
  }
}

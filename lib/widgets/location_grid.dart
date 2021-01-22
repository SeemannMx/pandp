import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:provider/provider.dart';

class LocationsGrid extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Consumer<CustomImageProvider>(
        builder: (context, imageProvider, child) {
          return GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          );
    });
  }
}


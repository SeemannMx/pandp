import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_image.dart';
import 'package:provider/provider.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CustomImageProvider>(
        builder: (context, imageProvider, child) {
      return ListView.builder(
          itemCount: imageProvider.images.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(child: imageProvider.images[index]),
            );
          });
    });
  }
}

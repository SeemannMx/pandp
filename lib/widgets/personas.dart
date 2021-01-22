import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_grid.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class Personas extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 10,
          child: Container(
            child: IconButton(
              color: Colors.pink,
              icon: Icon(Icons.clear),
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.MENU);
              },
            ),
          ),
        ),
        Flexible(
          flex: 90,
          child: Container(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 5,
                children: Provider.of<PersonProvider>(context, listen: false).personas,
              )
          ),
        ),
      ],
    );
  }
}


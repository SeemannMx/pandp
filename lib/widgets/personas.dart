import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/person.dart';
import 'package:provider/provider.dart';

class Personas extends StatelessWidget {
  List<Widget> personas = [];
  Widget widget;

  @override
  Widget build(BuildContext context) {
    widget = CustomPersonTile(PERSON.HUGO, () {
      _hugo(context);
    });
    personas.add(widget);

    return Column(
      children: [
        Flexible(
          flex: 10,
          child: Container(
            child: IconButton(
              color: Colors.pink,
              icon: Icon(Icons.clear),
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false)
                    .show(DISPLAY.MENU);
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
            children: personas,
          )),
        ),
      ],
    );
  }

  // Todo persopn actions
  _hugo(BuildContext context) {
    Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.DIALOG);
  }
}

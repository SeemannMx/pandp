import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/location_grid.dart';
import 'package:pandp/widgets/story_info.dart';
import 'package:provider/provider.dart';

class StoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 10,
          child: StoryInfo(),
        ),
        Flexible(
          flex: 80,
          child: LocationsGrid(),
        ),
        Flexible(
          flex: 10,
          fit: FlexFit.loose,
          child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: MaterialButton(
              color: DARK,
              hoverColor: ACCENT_GREEN,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Personas',
                      style: TextStyle(
                        color: DIRTY,
                      ))),
              onPressed: () {
                Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.PERSON);
              },
            ),
          ),
        ),
      ],
    );
  }
}

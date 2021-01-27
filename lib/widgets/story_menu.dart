import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_image.dart';
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
          flex: 15,
          child: Container(
            child: StoryInfo(),
          ),
        ),

        Flexible(
          flex: 65,
          child: Container(
            color: Colors.black45,
            child: LocationsGrid(),
          ),
        ),

        Flexible(
          flex: 20,
          fit: FlexFit.tight,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: MaterialButton(
              color: DARK,
              hoverColor: ACCENT_GREEN,
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Personas',
                      style: GoogleFonts.abel(
                          color: DIRTY,
                          fontSize: double.maxFinite
                      )
                  )),
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


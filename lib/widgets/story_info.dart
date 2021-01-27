import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class StoryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<WidgetProvider>(builder: (context, widgetProvider, child) {
      return Container(
        width: double.maxFinite,

        // todo padding fix dimension
        padding: EdgeInsets.symmetric(vertical: 10),
        child: MaterialButton(
          color: DARK,
          hoverColor: ACCENT_GREEN,
          child: FittedBox(
              fit: BoxFit.fill,
              child: Text('Story',
                  style: GoogleFonts.abel(
                      color: DIRTY,
                      fontSize: double.maxFinite
                  )
              )),
          onPressed: () {
            widgetProvider.show(DISPLAY.STORY);
          },
        ),
      );
    });
  }
}


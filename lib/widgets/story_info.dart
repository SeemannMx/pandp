import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class StoryInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<WidgetProvider>(builder: (context, widgetProvider, child) {
      return Row(
        children: [
          Flexible(
            flex: 40,
            fit: FlexFit.tight,
            child: Container(
              height: double.maxFinite,
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                color: Colors.black45,
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text('Story',
                        style: GoogleFonts.abel(
                            color: Colors.white,
                            fontSize: double.maxFinite
                        )
                    )),
                onPressed: () {
                  widgetProvider.show(DISPLAY.STORY);
                },
              ),
            ),
          ),
          Flexible(
            flex: 60,
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      );
    });
  }
}


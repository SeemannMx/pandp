import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_location.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/dummy.dart';
import 'package:provider/provider.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    print('build');

    return Column(
      children: [
        Flexible(
          flex: 10,
          child: IconButton(
            color: ACCENT_RED,
            icon: Icon(Icons.clear),
            onPressed: () {
              Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.MENU);
            },
          ),
        ),
        Flexible(
          flex: 90,
          child: FutureBuilder(
              future: rootBundle
                  .loadString(Provider.of<LocationProvider>(context).assetsPath),
              builder:
                  (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasError) return Dummy();

                return (snapshot.hasData)
                    ? Markdown(data: snapshot.data)
                    : Center(child: CircularProgressIndicator());
              }),
        ),
      ],
    );
  }
}

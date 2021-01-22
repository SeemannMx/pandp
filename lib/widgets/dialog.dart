import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:provider/provider.dart';

class CustomDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget widget;

    if (!Provider.of<WidgetProvider>(context, listen: false).isDisplayed) {
      Provider.of<WidgetProvider>(context, listen: false).isDisplayed = true;

      widget = AlertDialog(
        title: new Text("Material Dialog"),
        content: new Text("Hey! I'm Coflutter!"),
        actions: <Widget>[
          FlatButton(
            child: Text('Close me!'),
            onPressed: () {
              Provider.of<WidgetProvider>(context, listen: false).show(DISPLAY.PERSON);
              Provider.of<WidgetProvider>(context, listen: false).isDisplayed = false;
              Navigator.of(context).pop();
            },
          )
        ],
      );
    } else {
      widget = Container();
    }

    return widget;
  }
}

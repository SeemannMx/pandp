import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/dummy.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';
import 'dart:developer' as dev;

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var provider = Provider.of<PersonProvider>(context);
    provider.buildAssetsPathForPerson();

    dev.log(provider.assetsPath, name: this.runtimeType.toString());

    return AlertDialog(
      title: Text(provider.person.name.toString().cutName()),
      content: FutureBuilder(
          future: rootBundle.loadString(provider.assetsPath),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasError) return Dummy();

            return Container(
              height: size.height / 2,
              width: size.width / 2,
              child: (snapshot.hasData)
                  ? Markdown(data: snapshot.data)
                  : Center(child: CircularProgressIndicator()),
            );
          }),
      actions: <Widget>[
        FlatButton(
          child: Text('close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandp/provider/provider_person.dart';
import 'package:pandp/widgets/dialog.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

class CustomPersonTile extends StatelessWidget {

  CustomPersonTile(this.name, this.callback);

  PERSON name;
  VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(name.toString().cutName()),
      hoverColor: Colors.teal,
      onPressed: () {
        callback();

        showDialog(
            context: context,
            builder: (_) => CustomDialog()
        );
      },
    );
  }
}




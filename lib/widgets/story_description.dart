import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(flex: 5, child: Container()),
        Flexible(flex: 20, child: _getText('written by T. K-Friedrich')),
        Flexible(flex: 10, child: Container()),
        Flexible(flex: 20, child: _getText('last update: 20.01.2021')),
        Flexible(flex: 10, child: Container()),
        Flexible(flex: 12, child: _getText('This story is a T.E.A.R.S spin-off.')),
        Flexible(flex: 5, child: Container()),
      ],
    );
  }

  _getText(String text) {
    return Container(
      child: FittedBox(
        fit:  BoxFit.fill,
        child: Text(text,
            style: GoogleFonts.abel(
                color: Colors.white,
                fontSize: double.maxFinite
            )
        ),
      ),
    );
  }
}

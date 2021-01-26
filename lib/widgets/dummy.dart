
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Dummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
        height: size.height / 2,
        width: size.width / 2,
        child: Center(
            child: Text('no data found',
                style: GoogleFonts.abel(
                  color: Colors.black54,
                ))));
  }
}

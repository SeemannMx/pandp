import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black45,
        child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Padding(
                padding: EdgeInsets.all(50),
                child: Text('search',
                    style: GoogleFonts.oswald(
                        color: Colors.white))))
    );
  }
}
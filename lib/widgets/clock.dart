import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_clock.dart';
import 'package:provider/provider.dart';

class Clock extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Padding(
              padding: EdgeInsets.all(50),
              child:
              Consumer<LiveClockProvider>(builder: (context, clockProvider, child) {
                clockProvider.run();

                return Text(clockProvider.timeString,
                    style: GoogleFonts.oswald(
                        color: Colors.white));
              })
          )),
    );
  }
}
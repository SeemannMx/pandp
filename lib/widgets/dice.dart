import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/globals.dart';
import 'package:pandp/provider/provider_dice.dart';
import 'package:provider/provider.dart';

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceProvider = Provider.of<DiceProvider>(context);
    var fontsize = (MediaQuery.of(context).size.height + MediaQuery.of(context).size.width) / 75;

    return Row(
      children: [
        Flexible(
            flex: 35,
            fit: FlexFit.tight,
            child: SizedBox.expand(
              child: MaterialButton(
                color: DARK,
                hoverColor: ACCENT_GREEN,
                onPressed: () {
                  diceProvider.roll();
                },
                child: Text('dice', style: GoogleFonts.abel(color: DIRTY, fontSize: fontsize)),
              ),
            )
        ),
        Flexible(
            flex: 65,
            fit: FlexFit.tight,
            child: SizedBox.expand(child: Center(child: Text(diceProvider.result, style: GoogleFonts.abel(color: DARK, fontSize: fontsize)))),
        ),
      ],
    );
  }
}

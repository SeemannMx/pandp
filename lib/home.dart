import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:pandp/provider/provider_clock.dart';
import 'package:pandp/provider/provider_window.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:developer' as dev;

class Home extends StatelessWidget {
  static String route = '/home';

  @override
  Widget build(BuildContext context) {
    // dev.log('enter', name: HomePage.route);

    /// Where to call
    /// LiveClockProvider.dispose()

    return Scaffold(
      body: Consumer<WindowProvider>(builder: (context, windowProvider, child) {
        windowProvider.init(context);
        return Container(
          color: Colors.blueGrey,
          height: windowProvider.size.height,
          width: windowProvider.size.width,
          child: Row(
            children: [
              _left(windowProvider),
              _line(context, windowProvider),
              _right(context, windowProvider),
            ],
          ),
        );
      }),
    );
  }

  _left(WindowProvider windowProvider) {
    return Flexible(
      flex: windowProvider.flexLeft,
      child: Container(
        // color: Colors.black87,
        child: Column(
          children: [
            Flexible(
              flex: 10,
              child: Container(
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Flexible(
                      flex: 50,
                      fit: FlexFit.tight,
                      child: Container(
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
                      ),
                    ),
                    Flexible(
                      flex: 50,
                      fit: FlexFit.tight,
                      child: Container(
                        color: Colors.black45,
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Padding(
                                padding: EdgeInsets.all(50),
                                child: Text('search',
                                    style: GoogleFonts.oswald(
                                        color: Colors.white))))
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 90,
              child: Container(
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _line(BuildContext context, WindowProvider provider) {
    return GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails dragUpdate) =>
            provider.update(context, dragUpdate),
        child: MouseRegion(
          child: Container(
              width: provider.sliderWidth, color: provider.dragContainerColor),
          onHover: (e) => provider.hover(),
        ));
  }

  _right(BuildContext context, WindowProvider provider) {
    return Flexible(
      flex: provider.flexRight,
      child: Container(
        // color: Colors.black87,
        child: Column(
          children: [
            Flexible(
              flex: 0,
              child: Container(
                color: Colors.black12,
              ),
            ),
            Flexible(
              flex: 100,
              child: Container(color: Colors.grey, child: _story()),
            ),
          ],
        ),
      ),
    );
  }

  _story() {
    return FutureBuilder(
        future: rootBundle.loadString("assets/story.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          return snapshot.hasData
              ? Markdown(data: snapshot.data)
              : Center(
                  child: CircularProgressIndicator(),
                );
        });
  }
}

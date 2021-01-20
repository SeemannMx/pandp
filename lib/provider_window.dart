import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WindowProvider extends ChangeNotifier {
  Size size;

  var flexLeft = 300;
  var flexRight = 300;
  var sliderWidth = 3.0;

  bool dragColorSwitch = true;
  Color dragContainerColor = Colors.blueGrey;

  Widget dragItem = Icon(Icons.switch_left);

  init(BuildContext context){
    size = MediaQuery.of(context).size;
    sliderWidth = size.width * 0.0025;
  }

  hover() {

      if (dragColorSwitch) {
        dragContainerColor = Colors.pink;
      } else {
        dragContainerColor = Colors.blueGrey;
      }
      dragColorSwitch = !dragColorSwitch;

    notifyListeners();
  }

  update(BuildContext context, DragUpdateDetails update) {
    RenderBox getBox = context.findRenderObject();
    var local = getBox.globalToLocal(update.globalPosition);


      var max = size.width;
      flexRight = (max - local.dx).round();
      flexLeft = (max - flexRight).round();

      notifyListeners();
  }

}
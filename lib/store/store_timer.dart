import 'package:mobx/mobx.dart';
import 'dart:developer' as dev;



abstract class _LiveClock with Store {

  @observable
  String clock;

  @action
  _clock(){
    dev.log('enter', name: 'LiveClock');
  }
}
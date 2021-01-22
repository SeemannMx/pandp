import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as dev;

import 'package:google_fonts/google_fonts.dart';
import 'package:pandp/provider/provider_widget.dart';
import 'package:pandp/widgets/person.dart';
import 'package:provider/provider.dart';
import 'package:pandp/extentions.dart';

enum PERSON { HUGO, VANESSA, GIOVANNI }

class PersonProvider extends ChangeNotifier { }
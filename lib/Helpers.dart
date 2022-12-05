
import 'package:flutter/material.dart';

import 'Entity/Accademia.dart';

class CustomColors{
  static const MaterialColor materialBackgroundBlack = MaterialColor(
      0xF6F8F5,
      {
        50: Color.fromRGBO(21,21,26, .1),
        100:Color.fromRGBO(21,21,26, .2),
        200:Color.fromRGBO(21,21,26, .3),
        300:Color.fromRGBO(21,21,26, .4),
        400:Color.fromRGBO(21,21,26, .5),
        500:Color.fromRGBO(21,21,26, .6),
        600:Color.fromRGBO(21,21,26, .7),
        700:Color.fromRGBO(21,21,26, .8),
        800:Color.fromRGBO(21,21,26, .9),
        900:Color.fromRGBO(21,21,26, 1),
      });

  static const Color shadowWhite =  Color.fromRGBO(255,255,255, .10);
  static const Color backgroundBlack =  Color.fromRGBO(21,21,26, 1);
  static const Color backgroundBlack80 =  Color.fromRGBO(21,21,26, .8);

  static const Color whiteAppBar = Color.fromRGBO(246,248,245, 1);
  static const secondaryBlack = Color.fromRGBO(38,37,47, 1);
  static const Color green = Color.fromRGBO(67,170,139, 1);
  static const Color mainRed = Color.fromRGBO(255,121,102, 1);
  static const Color yellow = Color.fromRGBO(255, 178, 55, .72);
  static const BoxShadow whiteShadow =  BoxShadow(
      color: shadowWhite,
      spreadRadius: .001,
      blurRadius: 30

  );
}


class Utils{
  static Accademia accademia = Accademia();
}


class Spaces {
  static const SizedBox horizontal5 = SizedBox(width: 5);
  static const SizedBox vertical5 = SizedBox(height: 5);
  static const SizedBox horizontal12 =  SizedBox(width: 12);
}


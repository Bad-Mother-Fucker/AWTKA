
import 'package:flutter/material.dart';

import 'Entity/Accademia.dart';

class CustomColors{
  static const MaterialColor backgroundWhite = MaterialColor(
      0xF6F8F5,
      {
        50: Color.fromRGBO(246,248,245, .1),
        100:Color.fromRGBO(246,248,245, .2),
        200:Color.fromRGBO(246,248,245, .3),
        300:Color.fromRGBO(246,248,245, .4),
        400:Color.fromRGBO(246,248,245, .5),
        500:Color.fromRGBO(246,248,245, .6),
        600:Color.fromRGBO(246,248,245, .7),
        700:Color.fromRGBO(246,248,245, .8),
        800:Color.fromRGBO(246,248,245, .9),
        900:Color.fromRGBO(246,248,245, 1),
      });

  static const Color whiteAppBar = Color.fromRGBO(246,248,245, 1);

  static const Color mainRed = Color.fromRGBO(173,0,19, 1);
}


class Utils{
  static Accademia accademia = Accademia();
}
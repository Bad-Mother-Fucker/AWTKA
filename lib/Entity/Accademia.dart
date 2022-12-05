
import 'package:awtka/Entity/Allievo.dart';
import 'package:flutter/material.dart';
import 'Classi.dart';

class Accademia extends ChangeNotifier{
  static final Accademia _singleton = Accademia._internal();

  factory Accademia() {
    return _singleton;
  }

  Accademia._internal();


  Map<String, List<Allievo>> allievi = {
    Classi.leadership: [
      Allievo("Giorgiangela", "Simeone", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.verde),
      Allievo("Flavia", "Fornario", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 10, maglia: Maglie.verde),
      Allievo("Davide", "Granillo", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 11, maglia: Maglie.verde),
      Allievo("Domenico", "Liquori", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 7, maglia: Maglie.blu),
      Allievo("Roberta", "Spina", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.blu),
      Allievo("Antonio", "Sorrentino", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.blu),
      Allievo("Gabriella", "Caiafa", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 3, maglia: Maglie.grigia),
    ],
    Classi.basic: [
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),

    ],
    Classi.junior:[
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
    ],
    Classi.dragons:[
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
    ],
    Classi.tigers:[
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
    ],
    Classi.pandas:[
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
    ]
  };

}
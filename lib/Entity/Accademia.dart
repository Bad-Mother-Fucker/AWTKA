
import 'package:awtka/Entity/Allievo.dart';
import 'package:awtka/Entity/Certificato.dart';
import 'package:flutter/material.dart';
import 'Classi.dart';
import 'Contratto.dart';

class Accademia extends ChangeNotifier{
  static final Accademia _singleton = Accademia._internal();

  factory Accademia() {
    return _singleton;
  }

  Accademia._internal();


  Map<String, List<Allievo>> allievi = {
    Classi.leadership: [
      Allievo("Giorgiangela", "Simeone", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.verde, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Flavia", "Fornario", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 10, maglia: Maglie.verde, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Davide", "Granillo", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 11, maglia: Maglie.verde, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Domenico", "Liquori", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 7, maglia: Maglie.blu, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Roberta", "Spina", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.blu, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Antonio", "Sorrentino", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 9, maglia: Maglie.blu, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Gabriella", "Caiafa", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 3, maglia: Maglie.grigia, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Michele", "De Sena", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 4, maglia: Maglie.grigia, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Giuseppe", "Ignarro", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 2, maglia: Maglie.grigia, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
      Allievo("Giovanni", "Loffredo", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale", grado: 1, maglia: Maglie.grigia, certificato: Certificato(DateTime.now()), contratti: [Contratto(DateTime.now(),Classi.leadership, 1700)]),
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

import 'package:awtka/Entity/Allievo.dart';
import 'Classi.dart';

class Accademia {
  static final Accademia _singleton = Accademia._internal();

  factory Accademia() {
    return _singleton;
  }

  Accademia._internal();


  Map<String, List<Allievo>> allievi = {
    Classi.leadership: [
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
      Allievo("Francesco", "Novi", "indirizzo", DateTime(1), "email", "telefono", "codice_fiscale"),
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
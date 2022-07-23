import 'dart:core';
import 'package:awtka/Entity/Lezioneintro.dart';
import 'Contratto.dart';
import 'Esame.dart';
import 'Partecipazione.dart';
import 'Certificato.dart';

class Allievo {
  int? id;
  String? nome;
  String? cognome;
  String? indirizzo;
  DateTime? Dob;
  String? email;
  String? telefono;
  String? codice_fiscale;
  int? grado;
  Maglie? maglia;
  List<Esame>? esami;
  List<Partecipazione>? partecipazioni;
  Certificato? certificato;
  List<Contratto>? contratti;
  Uri? photo;
  LezioneIntro? lezioneIntro;
  String? provenienza;
  @override
  int get hashCode => codice_fiscale.hashCode;

  Allievo(
      this.nome,
      this.cognome,
      this.indirizzo,
      this.Dob,
      this.email,
      this.telefono,
      this.codice_fiscale,
      {
      this.id,
      this.grado,
      this.esami,
      this.maglia = Maglie.bianca,
      this.partecipazioni,
      this.certificato,
      this.contratti,
      this.photo,
      this.lezioneIntro
      });

      @override
      String toString() {
        return
          'Allievo { '
            'nome: $nome, '
            'cognome: $cognome, '
            'indirizzo: $indirizzo, '
            'Data di nascita: $Dob, '
            'email: $email, '
            'telefono: $telefono,'
            'codice fiscale: $codice_fiscale, '
            'grado: $grado, '
            'maglia: $maglia, '
            'esami: $esami, '
            'partecipazioni: $partecipazioni, '
            'certificato: $certificato, '
            'contratti: $contratti'
            'lezione introduttiva; $lezioneIntro'
            'provenienza contatto: $provenienza'
            '}';
      }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Allievo &&
          runtimeType == other.runtimeType &&
          codice_fiscale == other.codice_fiscale;


}



enum Maglie{
  bianca,
  grigia,
  verde,
  blu,
  marrone,
  nera
}

enum Cinture {
  bianca,
  gialla
}



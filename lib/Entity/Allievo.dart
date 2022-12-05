import 'dart:core';
import 'dart:ui';
import 'package:awtka/Entity/Lezioneintro.dart';
import 'package:flutter/material.dart';
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
  Color? maglia;
  List<Esame>? esami;
  List<Partecipazione>? partecipazioni;
  Certificato? certificato;
  List<Contratto>? contratti;
  Uri? photo;
  LezioneIntro? lezioneIntro;
  String? provenienzaContatto;
  String? classe;
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
        this.grado = 0,
        this.esami,
        this.maglia = Maglie.bianca,
        this.partecipazioni,
        this.certificato,
        this.contratti,
        this.photo,
        this.lezioneIntro,
        this.classe,

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
            'provenienza contatto: $provenienzaContatto'
            '}';
      }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Allievo &&
          runtimeType == other.runtimeType &&
          codice_fiscale == other.codice_fiscale;

  bool get certificatoValido => certificato != null && certificato!.scadenza.isAfter(DateTime.now());

  bool get certificatoInScadenza => certificato != null && certificato!.scadenza.isBefore(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 14));

  bool get contrattoValido => contratti != null && contratti!.isNotEmpty && contratti!.last.scadenza.isAfter(DateTime.now());

  bool get contrattoInScadenza => certificato != null && contratti!.isNotEmpty && contratti!.last.scadenza.isBefore(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 14));


}



class Maglie{
  static const Color bianca = Colors.white;
  static const Color grigia = Colors.grey;
  static const Color verde = Colors.green;
  static const Color blu = Colors.blueAccent;
  static const Color marrone = Colors.brown;
  static const Color nera = Colors.black;
}

enum Cinture {
  bianca,
  gialla
}



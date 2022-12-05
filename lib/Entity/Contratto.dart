import 'Classi.dart';

class Contratto {

    final DateTime data;
    final Classi tipo;
    Uri? PDF;
    final double prezzo;
    late final DateTime scadenza;

    Contratto(this.data, this.tipo, this.prezzo, {this.PDF}){
      scadenza = DateTime(data.year+1, data.month, data.day);
    }

    @override
    String toString() {
      return 'Contratto{data: $data, tipo: $tipo, PDF: $PDF, prezzo: $prezzo}';
    }


}


enum TipiContratto{
  rinnovo,
  iscrizione,
  affiliazione
}
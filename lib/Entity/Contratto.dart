import 'Classi.dart';

class Contratto {

    final DateTime data;
    final Classi tipo;
    Uri? PDF;
    final double prezzo;

    Contratto(this.data, this.tipo, this.prezzo, {this.PDF});

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
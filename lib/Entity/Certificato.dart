class Certificato {
  final DateTime data;
  late final DateTime scadenza;
  Uri? pdf;

  Certificato(this.data, {this.pdf}){
    scadenza = DateTime(data.year+1, data.month, data.day);
  }

  @override
  String toString() {
    return '{In scadenza il: ${scadenza}';
  }
}
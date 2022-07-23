
class LezioneIntro{
  DateTime data;
  String istruttore;
  LezioneIntro(this.data, this.istruttore);

  @override
  String toString() {
    return '{data: $data, istruttore: $istruttore}';
  }
}
extension IntX on num {
  String get add0 {
    var thisx = this;
    if (thisx < 10) {
      return '0$thisx';
    }
    return thisx.toString();
  }
}

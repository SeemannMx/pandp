extension CutName on String {

  String cutName() {
    return this.replaceAll('PERSON.', '');
  }
}
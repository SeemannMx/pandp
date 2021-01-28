extension CutName on String {

  String cutName() {
    return this.replaceAll('PERSON.', '');
  }

  String cutPath() {
    return this.replaceAll('assets', '').replaceAll('/', '').replaceAll('img', '').replaceAll('.png', '').replaceAll('_', ' ').trim().toUpperCase();
  }
}
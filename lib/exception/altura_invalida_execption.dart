class AlturaInvalidoException implements Exception {
  String error() => "Altura invalida";

  @override
  String toString() {
    return error();
  }
}
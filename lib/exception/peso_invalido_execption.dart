class PesoInvalidoException implements Exception {
  String error() => "Peso invalido";

  @override
  String toString() {
    return error();
  }
}
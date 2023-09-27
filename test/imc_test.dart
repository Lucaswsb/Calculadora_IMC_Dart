import 'package:imc/classes/utils.dart' as utils;
import 'package:test/test.dart';

void main() {
  test ('Calculo IMC com numero altura menor que 100', () {
    expect(utils.ConsoleUtils.calcularIMC(68, 2), equals(17));
  });

  test ('Calculo IMC com numero altura maior que 100', () {
    expect(utils.ConsoleUtils.calcularIMC(68, 200), equals(17));
  });
}
import 'dart:convert';
import 'dart:io';
// peso, altura e nome

class ConsoleUtils {
  static String lerStringComTexto (String texto) {
    print(texto);
    return lerString();
}  

  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble () {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return 0.0;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }


  static double calcularIMC (double peso, double altura) {
    if (altura < 100) {
      var imc = peso / (altura * altura);
      return imc;
    } else {
      var imc = peso / ((altura/100) * (altura/100)); 
      return imc;
    }
  }
}




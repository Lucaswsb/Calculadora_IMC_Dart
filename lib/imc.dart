import 'package:imc/classes/pessoa.dart';
import 'package:imc/exception/altura_invalida_execption.dart';
import 'package:imc/exception/nome_invalido_execption.dart';
import 'package:imc/exception/peso_invalido_execption.dart';
import 'classes/utils.dart';

void execute () {
  print("Bem vindo a sua calculadora de IMC em Dart");
  //Coleta de dados
  String nome = ConsoleUtils.lerStringComTexto('Info Nome: ');
  //Exceções
  if(nome.trim() == "") {
    throw NomeInvalidoException();
  }
  double? peso = ConsoleUtils.lerDoubleComTexto('Info Peso: ');
  //Exceções
  if (peso == 0.0) {
    throw PesoInvalidoException();
  }

  double? altura = ConsoleUtils.lerDoubleComTexto('Info Altura: ');
  //Exceções
  if (altura == 0.0) {
    throw AlturaInvalidoException();
  } 
  var pessoa = Pessoa(nome, peso!, (altura!/100));
  

  double imc = ConsoleUtils.calcularIMC(peso, altura);
  
  String inString = imc.toStringAsFixed(2);
  double imcR = double.parse(inString);



  //logica
  String classificarIMC() {
    double imc = ConsoleUtils.calcularIMC(peso,altura);
  
    if (imc < 16) {
      String classificacao = 'Magreza grave';
      return classificacao; 
    } else if (imc >= 16 && imc < 17) {
      String classificacao = 'Magreza moderada';
      return classificacao; 
    } else if(imc >= 17 && imc < 18.5){
      String classificacao = 'Magreza leve';
      return classificacao; 
    } else if (imc >= 18.5 && imc < 25) {
      String classificacao = 'Saudavel';
      return classificacao; 
    } else if (imc >= 25 && imc < 30) {
      String classificacao = 'Sobrepeso';
      return classificacao; 
    } else if (imc >= 30 && imc < 35) {
      String classificacao = 'Obesidade grau I';
      return classificacao; 
    } else if (imc >= 35 && imc < 40) {
      String classificacao = 'Obesidade grau II(severa)';
      return classificacao; 
    } else {
      String classificacao = 'Obesidade grau III(mórbida)';
      return classificacao; 
    }
}

  String classificacao = classificarIMC();

  print('Dados completos: $pessoa \n IMC: $imcR kg/m² \n Classificacao: $classificacao');

}
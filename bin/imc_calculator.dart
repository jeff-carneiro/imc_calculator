// ignore_for_file: dead_code

import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Olá, boas vindas à calculadora de IMC!");

  print("Informe seu o nome:");
  var nome = stdin.readLineSync(encoding: utf8) ?? "";

  print("Informe seu peso:");
  var lerPeso = stdin.readLineSync(encoding: utf8) ?? "";
  var peso = double.parse(lerPeso);

  print("Informe sua altura:");
  var lerAltura = stdin.readLineSync(encoding: utf8) ?? "";
  var altura = double.parse(lerAltura);

  double imc = peso / (altura * altura);

  //Classificação
    if (imc < 16) {
      print('Magreza grave');
    } else if (imc < 17) {
      print('Magreza moderada');
    } else if (imc < 18.5) {
      print('Magreza leve');
    } else if (imc < 25) {
      print('Saudável');
    } else if (imc < 30) {
      print('Sobrepeso');
    } else if (imc < 35) {
      print('Obesidade grau I');
    } else if (imc < 40) {
      print('Obesidade grau II (severa)');
    } else if (imc >= 40) {
      print('Obesidade grau III (mórbida)');
    }
}

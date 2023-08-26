// ignore_for_file: dead_code

import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Olá, boas vindas à calculadora de IMC!");
  print("Informe seu o nome:");
  var nome = stdin.readLineSync(encoding: utf8) ?? "";

  print("Informe seu peso:");
  double peso = stdin.readLineSync(encoding: utf8) as double;
  
  print("Informe sua altura:");
  double altura = stdin.readLineSync(encoding: utf8) as double;

  //IMC
  double imc = calcularIMC(peso, altura);
  //Classificacao
  double classificacao = verClassificacao(imc);

  print("Nome: $nome, Peso: $peso, Altura: $altura IMC: $imc, Classificacao: $classificacao");
}

//Função: calcular imc
calcularIMC(double peso, double altura) {
  return (peso / (altura * altura));
}

//Função: ver classificação
verClassificacao(double imc) {
  String classificacao = "";
  if (imc < 16) {
    return classificacao = "Magreza grave";
  } else if (imc < 17) {
    return classificacao = "Magreza moderada";
  } else if (imc < 18.5) {
    return classificacao = "Magreza leve";
  } else if (imc < 25) {
    return classificacao = "Saudável";
  } else if (imc < 30) {
    return classificacao = "Sobrepeso";
  } else if (imc < 35) {
    return classificacao = "Obesidade grau I";
  } else if (imc < 40) {
    return classificacao = "Obesidade grau II (severa)";
  } else if (imc >= 40) {
    return classificacao = "Obesidade grau III (mórbida)";
  }
  print(classificacao);
}

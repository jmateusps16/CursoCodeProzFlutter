//Aluno: João Mateus P. da S. Ferreira

import 'dart:convert';
import 'dart:io';

import 'package:golbola/golbola.dart' as golbola;

void main() {
  //Neste exercício será realizado a conversão de temperatura, imc e conversão de tempo.
  print('Olá, por gentileza informe seu nome: ');
  String nome = stdin.readLineSync(encoding: utf8)!;
  print('$nome por gentileza escolha uma das opções:');
  print('1- Converter Temperatura\n2- Calcular o IMC\n3- Converter o Tempo');
  int opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      //Conversão de temperatura Celcius para Fahrenheit
      print('\nInforme a temperatura em Celsius:');
      double valCelsius = double.parse(stdin.readLineSync()!);
      double valFahrenheit = ((9 * valCelsius) + 160) / 5;
      print('\nO valor convertido em Fahrenheit é $valFahrenheit °F');
      print('Até logo $nome');
      break;
    case 2:
      //Calculo do IMC
      print('\nInforme o peso');
      double valPeso = double.parse(stdin.readLineSync()!);
      print('\nInforme a altura');
      double valAltura = double.parse(stdin.readLineSync()!);
      double imc = valPeso / valAltura;
      print('\nO valor do IMC é $imc');
      print('Até logo $nome');
      break;
    case 3:
      //Conversão de Tempo
      print('\nInforme o valor em minuto para calcular o tempo.');
      int entradaTempo = int.parse(stdin.readLineSync()!);
      double resultEmDia = entradaTempo / (24 * 60);
      double resultadoEmHora = (entradaTempo % (24 * 60)) / 60;
      double resultadoEmMinuto = (entradaTempo % (24 * 60)) % 60;

      print(
          '${resultEmDia.toStringAsFixed(0)} dias, ${resultadoEmHora.toStringAsFixed(0)} horas e ${resultadoEmMinuto.toStringAsFixed(0)} minutos ');
      break;
    default:
      print(
          'Vamos tentar novamente $nome. Insira entre 1 e 3 para iniciar o programa.');
      break;
  }
}

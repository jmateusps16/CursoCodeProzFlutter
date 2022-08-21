import 'dart:convert';
import 'dart:io';

import 'package:golf_aula4/golf_aula4.dart' as golf_aula4;

void main(List<String> arguments) {
/*   /// documentação
  //null safety
  //print('Qual é o seu nome?');
  //String nome = stdin.readLineSync()!;
  //print('Qual é sua idade?');
  //String idade = stdin.readLineSync()!;
  //print('Seu nome é $nome, sua idade é $idade');

  ///Exercicio1
  print('Este programa é uma Calculadora Limitada');
  print('--');
  print('--');
  print(
      'Por gentileza informe o Num1 pra calcular a Soma, Multiplicação e Divisão');
  String num1 = stdin.readLineSync()!;
  print('Agora informe o Num2 para continuar...');
  String num2 = stdin.readLineSync()!;
  // double valor2 = double.parse(stdin.readLineSync()!);
  //Transforma o String em Double
  double doubleNum1 = double.parse(num1);
  double doubleNum2 = double.parse(num2);

  //Operações
  double soma = doubleNum1 + doubleNum2;
  double sub = doubleNum1 - doubleNum2;
  double div = doubleNum1 / doubleNum2;
  double mult = doubleNum1 * doubleNum2;

  print('--');
  print('O valor da soma é: $soma');
  print('O valor da subtração é: $sub');
  print('O valor da multiplicação é: $mult');
  print('O valor da divisão é: $div');
  print('--'); */

  /* 
  //Parte do exercicio substring
  print('-Parte Nome-');
  print('Digite o nome completo:');
  String nome = stdin.readLineSync(encoding: utf8)!;
  String primeiroNome = nome.substring(0, 4);
  String terceiroNome = nome.substring(12, 20);
  print('Você digitou o primeiro nome: $primeiroNome');
  print('Você digitou o primeiro nome: $terceiroNome'); */

  // print('Qual o seu nome?');
  // String nome = stdin.readLineSync(encoding: utf8)!;
  // final primeiroNome = nome.split(' ').first;
  // print('Qual a sua idade em dias?');
  // String stringDias = stdin.readLineSync()!;
  // int dias = int.parse(stringDias);
  // print('Olá $primeiroNome, tudo bem?');
  // int idadeAnos = ((dias / 365).floor());
  // int idadeMeses = (((dias / 365) - idadeAnos) * 12).floor();
  // double idadeDias = dias - (idadeAnos * 365) - (idadeMeses * 30);
  // print('Sua idade é: $idadeAnos anos, $idadeMeses meses e $idadeDias dias');
  // print(
  //     'De acordo com os dados fornecidos, você tem $idadeAnos, $idadeMeses e $idadeDias vividos, parabéns por essa jornada!');
  // print('Seja muito bem-vindo ao nosso curso!');

  // for (int i = 0; i < 10; i++) {
  //   print('Imprime na tela $i');
  // }

  // String mensagem = 'Dart é da hora!';
  // for (int i = 0; i < 5; i++) {
  //   print(mensagem);
  // }

  // int i = 0;
  // while (i < 20) {
  //   print(i);
  //   i = i + 1;
  // }

  // int b = 0;
  // do {
  //   print(b);
  //   b = b + 1;
  // } while (b < 10);

  // int numero = 0;
  // for (var a = 0; a < 10; a++) {
  //   numero = numero + 2;
  //   if (numero == 14) continue;
  //   if (numero == 20) break;
  //   print(numero);
  //   print(a);
  // }
  // int idade = 20;
  // if (idade < 18) {
  //   print('Jovem');
  // } else if (idade >= 18 && idade <= 50) {
  //   print('Adulto');
  // } else if (idade > 50) {
  //   print('Idoso');
  // } else {
  //   print('Criança');
  // }
}

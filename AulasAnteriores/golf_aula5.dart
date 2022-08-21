import 'dart:io';

import 'package:golf_aula5/golf_aula5.dart' as golf_aula5;

void main(List<String> arguments) {
/*   //Este codigo verifica duas entradas X e Y e verifica o seu quadrante no plano cartesiano
  // Entrada de Dados
  print('Informe o valor de x: ');
  int x = int.parse(stdin.readLineSync()!);

  print('Informe o valor de y: ');
  int y = int.parse(stdin.readLineSync()!);

  if (x > 0 && y > 0) {
    // Quadrante 1 (Valores possitivos)
    print('Os numeros passados ($x, $y) são do 1° quadrante)');
  } else if (x < 0 && y > 0) {
    //Quadrante 2 (X é negativo)
    print('Os numeros passados ($x, $y) são do 2° quadrante)');
  } else if (x < 0 && y < 0) {
    //Quadrante 3 (Valores negativos)
    print('Os numeros passados ($x, $y) são do 3° quadrante)');
  } else if (x > 0 && y < 0) {
    //Quadrante 4 (Y é negativo)
    print('Os numeros passados ($x, $y) são do 4° quadrante)');
  } else {
    print('Os numeros passados não pertencem a nenhum quadrante');
  } */

  //Funcionario tem 10% de desconto
  //Clientes VIPs ganham 5% de desconto
  //Ler entradas e verificar se é cliente comum, funcionário ou vip

  print('Insira o valor total da compra: ');
  double valTotal = double.parse(stdin.readLineSync()!);

  print('\nInforme tipo do cliente:');
  print('1- Cliente Comum\n2- Funcionario\n3- Cliente VIP S2');
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      //Valor total (Cliente Comun)
      print('\nO valor a ser pago é de: $valTotal R\$');
      break;
    case 2:
      //Valor desconto 10%
      double descDezPorcento = 0.1;
      double desconto = valTotal * descDezPorcento;
      double valComDesconto = valTotal - desconto;

      print('\nO valor a ser pago é de $valComDesconto R\$');
      break;
    case 3:
      //Valor desconto 5%
      double descCincoPorcento = 0.05;
      double desconto = valTotal * descCincoPorcento;
      double valComDesconto = valTotal - desconto;

      print('\nO valor a ser pago é de $valComDesconto R\$');
      break;
    default:
      print('\nPor gentileza informe uma das opções entre (1 e 3) obrigado!');
      break;
  }
}

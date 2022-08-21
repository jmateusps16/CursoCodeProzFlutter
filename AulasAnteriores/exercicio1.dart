import 'dart:io';

void main(List<String> arguments) {
  // diferente !=
  print(
      "\nSoma (1), Subtração (2), Divisão (3), Multiplicação (4)\n**Para sair digite (0)**\n");
  //xô loop infinito.
  int opcao = -1;
  double valorA = 0;
  double valorB = 0;

  while (opcao != 0) {
    stdout.writeln("\nOlá, informe qual a operação para continuar...");
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1: //Soma
        stdout.writeln("Informe o valor de A: ");
        valorA = double.parse(stdin.readLineSync()!);
        stdout.writeln("Informe o valor de B: ");
        valorB = double.parse(stdin.readLineSync()!);
        double soma = valorA + valorB;
        print("A soma é: $soma");
        break;
      case 2: //Subtração
        stdout.writeln("Informe o valor de A: ");
        valorA = double.parse(stdin.readLineSync()!);
        stdout.writeln("Informe o valor de B: ");
        valorB = double.parse(stdin.readLineSync()!);
        double subtracao = valorA - valorB;
        print("A subtração é: $subtracao");
        break;
      case 3: //Divisão
        stdout.writeln("Informe o valor de A: ");
        valorA = double.parse(stdin.readLineSync()!);
        stdout.writeln("Informe o valor de B: ");
        valorB = double.parse(stdin.readLineSync()!);
        double divisao = valorA / valorB;
        print("A divisão é: $divisao");
        break;
      case 4: //Multiplicação
        stdout.writeln("Informe o valor de A: ");
        valorA = double.parse(stdin.readLineSync()!);
        stdout.writeln("Informe o valor de B: ");
        valorB = double.parse(stdin.readLineSync()!);
        double multiplicacao = valorA * valorB;
        print("A multiplicacao é: $multiplicacao");
        break;
      default:
        break;
    }
  }
  stdout.writeln("Você saiu do programa");
}

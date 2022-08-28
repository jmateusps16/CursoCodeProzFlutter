import 'dart:io';
import 'dart:math';

void main() {
  int opcao = -1;
  stdout.writeln("Resoluções do exercicio da semana 3.");
  do {
    stdout.write("Informe entre 1 e 15 para executar o exercicio: ");
    opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 0: // Sai do sistema
        print("\nVocê escolheu sair do Sistema, valeu!!!");
        break;
      case 1: //Exercicio 1
        stdout.writeln(
            "\nEste exercicio lê dois valores e escreve o maior entre eles.");
        stdout.write("\nDigire um valor: ");
        double valorEntrada1 = double.parse(stdin.readLineSync()!);
        stdout.write("Digire um valor numérico: ");
        double valorEntrada2 = double.parse(stdin.readLineSync()!);
        maiorQue(valorEntrada1, valorEntrada2);
        break;
      case 2: //Exercicio 2
        stdout.writeln(
            "\nEste exercicio lê a quantidade de maça e aplica valores para Atacado e Varejo conforme quantidade.");
        stdout.write("\nInforme a quantidade de maça: ");
        int quantidadeMaca = int.parse(stdin.readLineSync()!);
        lojaMaca(quantidadeMaca);
        break;
      case 3: //Exercicio 3
        stdout.write("Informe o valor de um dos lados do triângulo: ");
        double ladoA = double.parse(stdin.readLineSync()!);
        stdout.write("Informe o outro valor de um dos lados do triângulo: ");
        double ladoB = double.parse(stdin.readLineSync()!);
        stdout.write("Informe o valor de um dos lados do triângulo: ");
        double ladoC = double.parse(stdin.readLineSync()!);

        if (ladoA > 0 && ladoB > 0 && ladoC > 0) {
          verificaTriangulo(ladoA, ladoB, ladoC);
        } else {
          stdout.writeln("Entrada inválida, insira valores maior que 0.");
        }
        break;
      case 4: //Exercicio 4
        stdout.write("Informe um numero: ");
        double numUm = double.parse(stdin.readLineSync()!);
        stdout.write("Informe outro numero: ");
        double numDois = double.parse(stdin.readLineSync()!);
        stdout.write("Informe ultimo numero: ");
        double numTreis = double.parse(stdin.readLineSync()!);
        double retornoMaiorNumero = maiorNumero(numUm, numDois, numTreis);
        stdout.writeln("O maior numero é: $retornoMaiorNumero");
        break;
      case 5: //Exercicio 5
        double valorGasolinaPorLitro = 5.15;
        double valorAlcoolPorLitro = 4.09;
        double litroAbastecido = 0;
        double litroPDesc = 20;
        double descAlcMenorLitro = 3;
        double descAlcMaiorLitro = 5;
        double descGasMenorLitro = 4;
        double descGasMaiorLitro = 6;

        stdout.write(
            "Informe o tipo de combustivel, sendo G para gasolina ou A para álcool: ");
        String combustivelInformado = stdin.readLineSync()!;
        combustivelInformado = combustivelInformado.toLowerCase();

        bool gasolinaVerdadeiro = combustivelInformado == 'g';
        bool alcoolVerdadeiro = combustivelInformado == 'a';

        if (gasolinaVerdadeiro) {
          stdout.write("Informe a quantidade de litros abastecidos: ");
          litroAbastecido = double.parse(stdin.readLineSync()!);
          if (litroAbastecido <= 0) {
            stdout.writeln("Você precisa abastecer primeiro.");
          } else if (litroAbastecido <= litroPDesc) {
            double retornoTotal = totalAbastecido(
                litroAbastecido, valorGasolinaPorLitro, descGasMenorLitro);
            imprimeAbastecimento(retornoTotal);
          } else if (litroAbastecido > litroPDesc) {
            double retornoTotal = totalAbastecido(
                litroAbastecido, valorGasolinaPorLitro, descGasMaiorLitro);
            imprimeAbastecimento(retornoTotal);
          }
        } else if (alcoolVerdadeiro) {
          stdout.write("Informe a quantidade de litros abastecidos: ");
          litroAbastecido = double.parse(stdin.readLineSync()!);
          if (litroAbastecido <= 0) {
            stdout.writeln("Você precisa abastecer primeiro.");
          } else if (litroAbastecido <= litroPDesc) {
            double retornoTotal = totalAbastecido(
                litroAbastecido, valorAlcoolPorLitro, descAlcMenorLitro);
            imprimeAbastecimento(retornoTotal);
          } else if (litroAbastecido > litroPDesc) {
            double retornoTotal = totalAbastecido(
                litroAbastecido, valorAlcoolPorLitro, descAlcMaiorLitro);
            imprimeAbastecimento(retornoTotal);
          } else {
            print("Erro: Algo não esperado ocorreu, tente novamente!");
          }
        } else {
          print("Erro: Tipo de combustível inválido.");
        }
        break;
      case 6:
        //Exercicio 6
        Map<int, String> mes = {
          1: "Janeiro",
          2: "Fevereiro",
          3: "Março",
          4: "Abril",
          5: "Maio",
          6: "Junho",
          7: "Julho",
          8: "Agosto",
          9: "Setembro",
          10: "Outubro",
          11: "Novembro",
          12: "Dezembro",
        };
        stdout.write("\nInforme o numero do Mês: ");
        int escolhaDoUsuario = int.parse(stdin.readLineSync()!);
        bool opcao = escolhaDoUsuario > 0 && escolhaDoUsuario <= 12;
        if (!opcao) {
          stdout.writeln("\nErro: Informe entre 1 e 12.");
        } else {
          stdout.writeln(
              "Você passou o $escolhaDoUsuario, ou seja, ${mes[escolhaDoUsuario]}.\n");
        }
        break;
      default:
        break;
    }
  } while (opcao != 0);
  print("Hora de Saída: ${DateTime.now()}");
}

void maiorQue(double val1, double val2) {
  ///Exercicio 1
  if (val1 == val2) {
    stdout.writeln("ERRO: Os valores informados não podem ser iguais.");
  } else if (val1 < val2) {
    stdout.writeln("O maior numero é: $val2");
  } else {
    stdout.writeln("O maior numero é: $val1");
  }
}

void lojaMaca(int quantidadeMaca) {
  ///Exercicio 2
  double precoMacaVarejo = 0.30;
  double precoMacaAtacado = 0.25;

  if (quantidadeMaca > 0 && quantidadeMaca < 12) {
    double totalCompra = quantidadeMaca * precoMacaVarejo;
    stdout.writeln("Total da compra: R\$ $totalCompra");
  } else if (quantidadeMaca >= 12) {
    double totalCompra = quantidadeMaca * precoMacaAtacado;
    stdout.writeln("Total da compra: R\$ $totalCompra");
  } else {
    stdout.writeln("ERRO: Entrada não permitida.");
  }
}

void verificaTriangulo(double ladoA, double ladoB, double ladoC) {
  ///Exercicio 3
  if (ladoA == ladoB && ladoB == ladoC) {
    stdout.writeln("Triângulo Equilátero.");
  } else if ((ladoA == ladoB) || (ladoB == ladoC) || (ladoA == ladoC)) {
    if ((ladoA != ladoB) || (ladoB != ladoC) || (ladoA != ladoC)) {
      stdout.writeln("Triângulo Isóscele");
    }
  } else {
    stdout.writeln("Triângulo Escaleno");
  }
}

double maiorNumero(double val1, double val2, double val3) {
  //Exercicio 4
  if (val1 > val2 && val2 < val3) {
    return val1;
  } else if (val2 > val3 && val2 > val1) {
    return val2;
  } else {
    return val3;
  }
}

double totalAbastecido(litro, valor, porcentoDesconto) {
  double totalSemDesconto = litro * valor;
  double descontoEmPorcento = porcentoDesconto / 100;
  double valorDeDesconto = totalSemDesconto * descontoEmPorcento;
  double totalComDesconto = totalSemDesconto - valorDeDesconto;
  return totalComDesconto;
}

void imprimeAbastecimento(double retornoTotal) {
  stdout.writeln(
      "Valor total a ser pago: R\$ ${retornoTotal.toStringAsFixed(2)} ");
}

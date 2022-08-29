import 'dart:io';
import 'dart:math';

void main() {
  final horaEntrada = DateTime.now();
  int opcao = -1;
  stdout.writeln("Resoluções do exercicio da semana 3.");
  do {
    stdout.write("\nInforme entre 1 e 15 para executar o exercicio: ");
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
        stdout.writeln(
            "\nEste exercicio lê os valores e informa o tipo do triângulo");
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
        stdout.writeln("\nEste exercicio lê tres valores e imprime o maior");
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
        stdout.writeln(
            "\nEste exercicio calcula o valor a ser pago do combustivel com desconto");
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
        stdout.writeln(
            "\nEste exercicio lê um valor e informa o mês de referência.");
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
        bool opcaoExSeis = escolhaDoUsuario > 0 && escolhaDoUsuario <= 12;
        if (!opcaoExSeis) {
          stdout.writeln("\nErro: Informe entre 1 e 12.");
        } else {
          stdout.writeln(
              "Você passou o $escolhaDoUsuario, ou seja, ${mes[escolhaDoUsuario]}.\n");
        }
        break;
      case 7:
        //Exercicio 7
        stdout.writeln("\nEste exercicio calcula o peso ideal.");
        stdout.write("\nM- Masculino");
        stdout.write("\nF- Feminino");
        stdout.write(
            "\nAltura minima permitida de 0.50 CM e maxima 2.72 m."); //Robert Wadlow
        stdout.write("\nInforme qual o sexo (M ou F): ");
        String sexo = stdin.readLineSync()!;
        sexo = sexo.toLowerCase();
        bool opcaoExSete = sexo == 'm' || sexo == 'f';
        if (!opcaoExSete) {
          stdout.writeln("ERRO: Opção inválida, tente novamente.");
        } else {
          stdout.write("\nInforme a altura: ");
          double altura = double.parse(stdin.readLineSync()!);
          bool alturaPermitida = altura > 0.30 && altura <= 2.72;
          if (!alturaPermitida) {
            stdout.writeln("\nERRO: Altura inválida.");
          } else {
            if (sexo == 'm') {
              //Masculino: (72.7 * altura) – 58
              double retornoPesoIdeal = pesoIdeal(72.7, altura, 58);
              stdout.writeln("Seu peso ideal é: $retornoPesoIdeal");
            } else {
              //Feminino: (62.1 *altura) -44.7
              double retornoPesoIdeal = pesoIdeal(62.1, altura, 44.7);
              stdout.writeln("Seu peso ideal é: $retornoPesoIdeal");
            }
          }
        }
        break;
      case 8:
        //Exercicio 8
        stdout.write("\nInforme um valor da compra: ");
        double valorCompra = double.parse(stdin.readLineSync()!);
        if (valorCompra > 0) {
          double desconto = descontoLoja(valorCompra);
          double valorFinalComDesconto = valorCompra - desconto;
          if (desconto > 0) {
            stdout.writeln(
                "Sua compra de $valorCompra R\$ teve um desconto de $desconto R\$, novo valor a ser pago é de: $valorFinalComDesconto R\$");
          } else {
            stdout.writeln("O valor a ser pago é de: $valorCompra R\$");
          }
        } else {
          stdout.writeln(
              "O valor passado é invalido, informe um valor maior que 0.");
        }
        break;
      case 9:
        //Exercicio 9
        int idadeMaiorQueDezoito = 0;
        stdout.write(
            "Informe a quantidade de pessoas cuja idade será analisado: ");
        int quantidadePessoas = int.parse(stdin.readLineSync()!);
        int idadeTotal = 0;
        for (int i = 0; i < quantidadePessoas; i++) {
          stdout.write("Informe o nome: ");
          String nome = stdin.readLineSync()!;
          stdout.write("Informe a idade de $nome: ");
          int idade = int.parse(stdin.readLineSync()!);
          if (idade >= 18) {
            idadeMaiorQueDezoito += 1;
          }
        }
        stdout.writeln("$idadeMaiorQueDezoito pessoas são maiores de idade.");
        break;
      case 10:
        //Exercicio 10
        int idade15 = 0;
        int idade16 = 0;
        int idade31 = 0;
        int idade46 = 0;
        int idade60 = 0;
        stdout.write(
            "Informe a quantidade de pessoas cuja idade será analisado: ");
        int quantidadePessoas = int.parse(stdin.readLineSync()!);
        int idadeTotal = 0;

        for (int i = 0; i < quantidadePessoas; i++) {
          //Ler nome e idade
          stdout.write("Informe o nome: ");
          String nome = stdin.readLineSync()!;
          stdout.write("Informe a idade de $nome: ");
          int idade = int.parse(stdin.readLineSync()!);

          bool faixaQuinze = idade >= 1 && idade <= 15;
          bool faixaDezeseis = idade >= 16 && idade <= 30;
          bool faixaTrintaeUm = idade >= 31 && idade <= 45;
          bool faixaQuarentaeSeis = idade >= 46 && idade < 60;
          bool acimadeSesenta = idade > 60;

          if (faixaQuinze) {
            idade15 += 1;
            idadeTotal += 1;
          } else if (faixaDezeseis) {
            idade16 += 1;
            idadeTotal += 1;
          } else if (faixaTrintaeUm) {
            idade31 += 1;
            idadeTotal += 1;
          } else if (faixaQuarentaeSeis) {
            idade46 += 1;
            idadeTotal += 1;
          } else if (acimadeSesenta) {
            idade60 += 1;
            idadeTotal += 1;
          } else {
            print(
                "O valor da idade ($idade) digitado não é valido, tente novamente.");
            stdout.writeln("Saindo do programa...");
            break;
          }
        }
        if (idadeTotal == quantidadePessoas) {
          stdout.writeln(
              "A quantidade de pessoas até 15 anos é de: $idade15, representando ${((idade15 / quantidadePessoas) * 100).toStringAsFixed(2)}% do total inserido.");
          stdout.writeln("A quantidade de pessoas com 16 a 30 anos: $idade16");
          stdout.writeln("A quantidade de pessoas com 31 a 45 anos: $idade31");
          stdout.writeln("A quantidade de pessoas com 46 a 60 anos: $idade46");
          stdout.writeln(
              "A quantidade de pessoas acima de 60 anos é de: $idade60, representando ${((idade60 / quantidadePessoas) * 100).toStringAsFixed(2)}% do total inserido.");
        } else {
          stdout.write("Algum problema ocorreu, nenhum dado a ser exibido...");
        }
        break;
      case 11:
        //Exercicio 11
        List par = [];
        List impar = [];
        stdout.write("\nInforme um valor: ");
        int valorInformado = int.parse(stdin.readLineSync()!);
        if (valorInformado > 0) {
          for (int i = 1; i <= valorInformado; i++) {
            double mod = i % 2;
            if (mod == 0) {
              par.add(i);
            } else {
              impar.add(i);
            }
          }
          stdout.writeln("No $valorInformado, os valores pares são: $par.");
          stdout.writeln("No $valorInformado, os valores impares são: $impar.");
        } else {
          stdout.writeln("ERRO: Insira um numero maior que 0");
        }

        break;
      case 12:
        //Exercicio 12
        int idade = -1;
        int incremento = -1;
        int somaIdade = 0;
        stdout.writeln("\nEste programa calcula a média das idades inseridas.");
        stdout.writeln("Para sair digite a idade 0");
        do {
          stdout.write("\nInforme a idade: ");
          idade = int.parse(stdin.readLineSync()!);
          somaIdade += idade;
          incremento += 1;
        } while (idade != 0);
        double mediaIdade = somaIdade / incremento;
        stdout.writeln("Você optou por sair.");
        stdout.writeln(
            "\nA média das idades é de: ${mediaIdade.toStringAsFixed(0)} anos.");
        break;
      case 13:
        //Exercicio 13
        stdout.writeln("Não realizado.");
        break;
      case 14:
        //Exercicio 14
        stdout.writeln("Não realizado.");
        break;
      case 15:
        //Exercicio 15
        stdout.writeln("Este programa analisa o maior e menor dos inseridos.");
        stdout.write("\nInsira a quantidade de numeros: ");
        int quantidade = int.parse(stdin.readLineSync()!);
        double maiorNumero = 0;
        double menorNumero = 0;
        List numerosInformados = [];
        for (int i = 0; i < quantidade; i++) {
          stdout.write("Informe um numero: ");
          double numeroPassado = double.parse(stdin.readLineSync()!);
          if (numeroPassado > maiorNumero) {
            maiorNumero = numeroPassado;
            numerosInformados.add(numeroPassado);
          } else if (numeroPassado < menorNumero) {
            menorNumero = numeroPassado;
            numerosInformados.add(numeroPassado);
          } else {
            numerosInformados.add(numeroPassado);
          }
        }
        stdout.write("Numeros Informados: ");
        stdout.writeln(numerosInformados);
        stdout.writeln(
            "\nO menor numero inserido é $menorNumero e o maior é $maiorNumero");
        break;
      default:
        break;
    }
  } while (opcao != 0);
  print(
      "Você iniciou o programa as $horaEntrada e escolheu sair as ${DateTime.now()}\n");
}

void maiorQue(double val1, double val2) {
  if (val1 == val2) {
    stdout.writeln("ERRO: Os valores informados não podem ser iguais.");
  } else if (val1 < val2) {
    stdout.writeln("O maior numero é: $val2");
  } else {
    stdout.writeln("O maior numero é: $val1");
  }
}

void lojaMaca(int quantidadeMaca) {
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

double pesoIdeal(peso, altura, referencia) {
  double seuPesoIdeal = (peso * altura) - referencia;
  return seuPesoIdeal;
}

double descontoLoja(valorVenda) {
  double referenciaDesconto = valorVenda / 100;
  int referenciaTruncada = referenciaDesconto.truncate();
  double desconto = 0;
  bool semDesconto = referenciaTruncada > 0 && referenciaTruncada < 5;
  bool descontoMinimoEMaximo =
      referenciaTruncada >= 5 && referenciaTruncada <= 29;
  if (semDesconto) {
    desconto = 0;
  } else if (!descontoMinimoEMaximo) {
    if (referenciaDesconto >= 30) {
      desconto = 25;
    }
  } else if (descontoMinimoEMaximo) {
    for (int i = 5; i <= referenciaTruncada; i++) {
      desconto += 1;
    }
  } else {
    desconto = 0;
  }
  desconto = desconto / 100;
  double valorDescontoFinal = valorVenda * desconto;
  return valorDescontoFinal;
}

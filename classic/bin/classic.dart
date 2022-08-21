import 'package:classic/classic.dart' as classic;
import 'dart:io';

//Aluno: João Mateus Palmeira da Silva Ferreira
//Git: https://bit.ly/3AyDwP7

void main() {
  ///Exercicio de entrega da aula Semana 03 presencial 02.
  ///https://bit.ly/3T4hc7b

  int idade15 = 0;
  int idade16 = 0;
  int idade31 = 0;
  int idade46 = 0;
  int idade60 = 0;
  stdout.write("Informe a quantidade de Pessoas será análisado a idade: ");
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
}

import 'package:bird/bird.dart' as bird;

void main() {
  //Trabalhando com Funções
  print(bird.mediaAluno(10, 20));

  bird.mostraNoConsoleSoma(10, 20);

  print(bird.multiplicacao(20, 30));

  bird.funcaoParametroPosicionadoOpcional("Eu gosto de Video Games!", 'Raul');
  bird.funcaoParametroPosicionadoOpcional(
      'As vezes sonho que estou caindo e acordo assustado', 'Eu Sonhando', 2);
  bird.funcaoParametroPosicionadoOpcional("Você aqui de novo?");

  var marcusFala = bird.pessoaFala("Marcus");
  print(marcusFala("É muito legal uma função retornar outra função"));

  var claudioFala = bird.pessoaFala("Claudio");
  print(claudioFala("Você só fica pronto fazendo!"));
}

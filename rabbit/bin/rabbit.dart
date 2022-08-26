import 'package:rabbit/rabbit.dart' as rabbit;

///https://api.dart.dev/stable/2.17.7/dart-core/List-class.html
///https://dart.dev/guides/language/language-tour

void main(List<String> arguments) {
/*   var lista = [];
  for (int i = 1; i <= 10; i++) {
    lista.add(i);
  }
  lista[7] = 33;
  lista.remove(2);
  lista.removeAt(7);
  lista.removeLast();
  lista.removeRange(3, 7);
  print(lista);
  print(lista.length);
  lista.clear();
  print(lista.length); */

  final listaDeTamanhoFixo = List<int>.filled(5, 0);
  print(listaDeTamanhoFixo);
  listaDeTamanhoFixo[0] = 87;
  print(listaDeTamanhoFixo);
  //lista de tamanho fixo não pode ser alterado ou incrementado
  /* listaDeTamanhoFixo.length = 0; //vai compilar mas retorna um erro nesta linha
  listaDeTamanhoFixo.add(999); //vai compilar mas retorna um erro nesta linha */

  final listaExpansivel = <String>['A', 'B'];
  listaExpansivel[0] = 'G';
  print(listaExpansivel);
  listaExpansivel.add('X');
  listaExpansivel.addAll({'H', 'J', 'B', 'I', 'M'});
  listaExpansivel.add('B');
  print(listaExpansivel);

  //verificar onde o elemento está na lista
  final indexA = listaExpansivel.indexOf('A');
  print(indexA);
  final primeiroIndexB = listaExpansivel.indexOf('B');
  print(primeiroIndexB);
  print(listaExpansivel);
  final ultimoIndexB = listaExpansivel.lastIndexOf('B');
  print(ultimoIndexB);

  // é possivel também remover, adicionar ou substituir um intervalo
  listaExpansivel.removeLast();
  print(listaExpansivel);
  listaExpansivel.insert(1, 'New'); // adicionou no id == 1
  print(listaExpansivel);
  listaExpansivel.replaceRange(0, 3, ['AB', 'I', 'V']);
  print(listaExpansivel);
  listaExpansivel.fillRange(2, 4, 'F');
  print(listaExpansivel);

  int num1 = 10;
  int num2 = num1;

  print("numero num1 $num1 e num2 $num2");
  num2 = 3;
  print("numero num1 $num1 e num2 $num2");
}

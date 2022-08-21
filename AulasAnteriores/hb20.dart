import 'package:hb20/hb20.dart' as hb20;

void main() {
  int numeroInteiro = 5;
  double numeroDecimal = 5.7;
  String texto = 'este é um texto';
  bool booleano = false;

  print('Este é um tipo: ${numeroInteiro.runtimeType}');
  // Este é um tipo: int

  print('Este é um tipo: ${numeroDecimal.runtimeType}');
  //Este é um tipo: double

  print('Este é um tipo: ${texto.runtimeType}');
  //Este é um tipo: String

  print('Este é um tipo: ${booleano.runtimeType}');
  //Este é im tpo: bool

  const a = 3;
  const b = "3.3";

  print('Esses são os valores de A e B: $a, $b');
}

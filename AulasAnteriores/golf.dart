import 'package:golf/golf.dart' as golf;

void main() {
  //Calcular Area Retangulo
  double retanguloVal1 = 10;
  double retanguloVal2 = 20;
  double areaRetangulo = retanguloVal1 * retanguloVal2;
  print(' ');
  print('O retangulo tem: $areaRetangulo de area.');
  print('----------');
  print(' ');

  //Calcular Area Triangulo
  double baseTriangulo = 20;
  double alturaTriangulo = 30;
  double areaTriangulo = (baseTriangulo + alturaTriangulo) / 2;
  print('O Triangulo tem: $areaTriangulo de area.');
  print('----------');
  print(' ');

  //Calcular Raio de uma Circuferencia
  double comp = 36; //comprimento
  double valPi = 3.14; //valor de pi
  double raio = comp / (2 * valPi);
  print('O raio é: $raio');
  print('----------');
  print(' ');

  //Calcular idade em dias, demonstrado como dia, mes e ano.
  int entradadeDias = 5000; //informa o valor em dias
  int idadeAnos = ((entradadeDias / 365).floor());
  int idadeMeses = (((entradadeDias / 365) - idadeAnos) * 12).floor();
  double idadeDias = entradadeDias - (idadeAnos * 365) - (idadeMeses * 30);
  print('Sua idade é: $idadeAnos anos, $idadeMeses meses e $idadeDias dias');
}

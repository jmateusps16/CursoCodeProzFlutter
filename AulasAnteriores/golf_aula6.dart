import 'dart:io';

void main(List<String> arguments) {
  //se tiver resto é impar
  print("Informe um valor");
  double valorInformado = double.parse(stdin.readLineSync()!);
  int par = 0;
  int impar = 0;
  for (int i = 1; i <= valorInformado; i++) {
    double mod = i % 2;
    if (mod == 0) {
      par++;
    } else {
      impar++;
    }
  }
  print(
      "No intervalo de ${valorInformado.toStringAsFixed(0)}, houveram $par valores pares e $impar valores impares.");
}

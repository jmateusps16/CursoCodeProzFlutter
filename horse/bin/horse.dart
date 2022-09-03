//Semana 05
import 'dart:collection';
import 'dart:io';

import 'package:horse/funcionario.dart';

void main() {
  Funcionario func1 = Funcionario("Mateus", "12345678", 20);
  print("A idade de ${func1.nomePessoa} é ${func1.idadePessoa}");
  func1.aniver();
  print(
      "${func1.nomePessoa} fez aniversário, sua idade agora é ${func1.idadePessoa}");
}

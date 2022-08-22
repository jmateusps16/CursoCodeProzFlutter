int calculate() {
  return 6 * 7;
}

double mediaAluno(int nota1, int nota2) {
  final media = (nota1 + nota2) / 2;
  return media;
}

int multiplicacao(int valor1, int valor2) => valor1 * valor2;

mostraNoConsoleSoma(int v1, int v2) => print(v1 + v2);

//Parâmetros posicionados opcional

void funcaoParametroPosicionadoOpcional(String msg,
    [String sujeito = "Nameless king", int repetirXVezes = 1]) {
  for (int i = 0; i < repetirXVezes; i++) print('$sujeito: $msg');
}

Function pessoaFala(String nome) => (String msg) => "$nome: $msg";

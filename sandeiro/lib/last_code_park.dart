//Crie três classes, as quais devem conter
//um método de manipulação de String cada e
//que retornem um valor quando forem invocados.

class Nome {
  String _nome;
  String get nome => _nome;
  set nome(novoNome) {
    _nome = novoNome;
  }

  Nome(this._nome);

  String alteraLetra(String atual, String nova) {
    String nomeAlterado = nome.replaceAll(atual, nova);
    return nome = nomeAlterado;
  }
}

class InverterOrdem {
  final String _nome;
  String get nome => _nome;
  InverterOrdem(this._nome);

  void inverter() {
    print(nome.split(" ").reversed.join(" "));
  }
}

class Caps {
  final String _nome;
  String get nome => _nome;
  Caps(this._nome);

  void tudoMaiusculo() {
    String nomeMaiusculo = nome.toUpperCase();
    print(nomeMaiusculo);
  }

  void tudoMinusculo() {
    String nomeMaiusculo = nome.toLowerCase();
    print(nomeMaiusculo);
  }
}

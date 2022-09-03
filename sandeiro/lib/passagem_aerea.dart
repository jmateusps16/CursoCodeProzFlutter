abstract class PassagemAerea {
  void cancelarPassagem();
  bool usarPassagem();
}

class Passagem extends PassagemAerea {
  int _codPassagem;
  String _nomeCliente;
  bool _statusDaPassagem;

  int get codPassagem => _codPassagem;
  void novoCodPassagem(int value) => _codPassagem = value;

  String get nomeCliente {
    return _nomeCliente;
  }

  set nomeCliente(novoNome) {
    _nomeCliente = novoNome;
  }

  bool get statusDaPassagem => _statusDaPassagem;

  Passagem(this._codPassagem, this._nomeCliente, this._statusDaPassagem);

  void cancelarPassagem() {
    if (_statusDaPassagem != false) {
      bool cancelada = true;
      _statusDaPassagem = false;
      print("Sua passagem foi cancelada com sucesso!");
    } else {
      print("Nada alterado, pois sua passagem está cancelada.");
    }
  }

  bool usarPassagem() {
    //não construi o restante do código
    bool usada = false;
    return usada = true;
  }

  void mostrarPassagem() {
    if (_statusDaPassagem) {
      String statusPassagem = "ativo";
      print(
          "Olá $_nomeCliente, o status da sua passagem $codPassagem está $statusPassagem");
    } else {
      String statusPassagem = "inativo";
      print(
          "Olá $_nomeCliente, o status da sua passagem $codPassagem está $statusPassagem.");
      print("\nPor gentileza entre em contato com a central.");
    }
  }
}

class Pessoa {
  String _nomePessoa;
  String _documentoDeIdentificacao;
  int _idadePessoa;

  Pessoa(this._nomePessoa, this._documentoDeIdentificacao, this._idadePessoa);

  String get nomePessoa => _nomePessoa;
  String get documentoDeIdentificacao => _documentoDeIdentificacao;
  int get idadePessoa => _idadePessoa;

  void dormir() {
    print("$nomePessoa está dormindo");
  }

  void aniver() {
    _idadePessoa++;
  }
}

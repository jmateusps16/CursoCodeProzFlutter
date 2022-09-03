import 'dart:math';

///Crie uma classe de sua preferência com, no mínimo, um atributo,
///um método com retorno e um método sem retorno. Depois, instancie
///três ou mais objetos para testar esta classe.

class CarrinhoDeCompras {
  String _nome;
  String get nome => _nome;
  set nome(String nome) {
    _nome = nome;
  }

  int _qntItensNoCarrinho = 0;
  int get qntItensNoCarrinho => _qntItensNoCarrinho;
  set qntItensNoCarrinho(int qntItensNoCarrinho) {
    _qntItensNoCarrinho = qntItensNoCarrinho;
  }

  double _valTotalDoCarrinho = 0;
  double get valTotalDoCarrinho => _valTotalDoCarrinho;
  set valTotalDoCarrinho(double valTotalDoCarrinho) {
    _valTotalDoCarrinho = valTotalDoCarrinho;
  }

  double valItem = 0;

  CarrinhoDeCompras(this._nome, this._qntItensNoCarrinho, this.valItem,
      this._valTotalDoCarrinho);

  void addNoCarrinho(int qnt, double valorItem) {
    qntItensNoCarrinho += qnt;
    valTotalDoCarrinho += (valorItem * qnt);
  }

  void consultarCarrinho() {
    double valFrete = 40;
    if (consultarFreteGratis()) {
      print(
          "Olá $nome, você possui $qntItensNoCarrinho itens no carrinho e o valor total é de: $valTotalDoCarrinho com frete gratis. =D");
    } else {
      double valTotalDoCarrinhoComFrete = valTotalDoCarrinho + valFrete;
      print(
          "Olá $nome, você possui $qntItensNoCarrinho itens no carrinho e o valor total é de com frete: ${valTotalDoCarrinho}");
    }
  }

  bool consultarFreteGratis() {
    bool freteGratis = false;
    if (valTotalDoCarrinho >= 250) {
      return freteGratis = true;
    } else {
      return freteGratis;
    }
  }
}

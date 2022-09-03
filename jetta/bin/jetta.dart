import 'package:jetta/jetta.dart' as jetta;
import 'package:jetta/jetta_code_park.dart';

void main() {
  CarrinhoDeCompras carCompra1 = new CarrinhoDeCompras("Mateus", 0, 0, 0);
  CarrinhoDeCompras carCompra2 = new CarrinhoDeCompras("Kaio", 0, 0, 0);
  CarrinhoDeCompras carCompra3 = new CarrinhoDeCompras("Reginaldo", 0, 0, 0);

  carCompra1.addNoCarrinho(3, 50);
  //carCompra1.addNoCarrinho(5, 30);
  carCompra1.consultarFreteGratis();
  carCompra1.consultarCarrinho();
}

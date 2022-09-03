import 'package:sandeiro/last_code_park.dart';
import 'package:sandeiro/passagem_aerea.dart';
/*   Passagem passagemUm = Passagem(1, "Mateus", true);

  passagemUm.mostrarPassagem();
  print("----------\n");
  passagemUm.novoCodPassagem(2);
  passagemUm.mostrarPassagem();
  print("----------\n");
  passagemUm.cancelarPassagem();
  passagemUm.mostrarPassagem(); */

/*   Student novoEstudante1 = Student("Mateus");
  novoEstudante1.addDiscipline("Programação");
  novoEstudante1.addDiscipline("Finanças");

  print(novoEstudante1.disciplines); */

/*   Message mensagem = Message("Olá tudo bem?", "recipient", "sender");
  print(mensagem.recipient);
  print("---\n");
  print(mensagem.subject);
  print("---\n");
  print(mensagem.sender);
  print("---\n");
  print(mensagem.encrypt()); */

/*   Person person = Person("Mateus", 09102510456);
  print(person.formatCPF()); */
void main() {
  Nome meuNome = Nome("Mateus Palmeira da Silva");
  meuNome.alteraLetra("a", "b");
  print(meuNome.nome);
  print("----\n");

  InverterOrdem nomeTeste = InverterOrdem("João Victor Palmeira");
  nomeTeste.inverter();
  print("----\n");
}

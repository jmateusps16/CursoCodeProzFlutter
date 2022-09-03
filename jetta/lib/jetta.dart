import 'dart:io';

class Carro {
  String? tipo;
  String? modelo;
  Map<String, String> combustivel = {
    "a": "álcool",
    "d": "diesel",
    "g": "gasolina",
    "gnv": "gás veicular natural",
    "e": "elétrico"
  };
  int? ano;
  int? quilometragem;
  bool ligado = false;

  bool ligar() {
    print("$tipo está ligado.");
    ligado = true;
    return ligado;
  }

  bool desligar() {
    print("$tipo ligado.");
    ligado = false;
    return ligado;
  }

  void andar() {
    if (ligar()) {
      print("$tipo está andando.");
    } else {
      print("primeiro ligue $tipo.");
    }
  }

  void parar() {
    if (!ligar()) {
      print("$tipo desligado.");
    } else {
      print("$tipo já está desligado.");
    }
  }
}

class Casa {
  int? quartos;
  String? endereco;
  String? dono;
  bool estaConstruida = false;

  bool construir() {
    print("Casa construida");
    return estaConstruida = true;
  }

  void reformar() {
    print("reformada");
    if (estaConstruida) {
      print("Casa reformada");
    } else {
      print("Precisa ter uma casa construida primeiro.");
    }
  }

  void demolir() {
    if (estaConstruida) {
      print("Casa demolida.");
    } else {
      print("Precisa ter uma casa construida primeiro.");
    }
  }
}

class Festa {
  String? tipo;
  String data = "10 de outubro de 2022";
  String? endereco;
  int? quantidadePessoas;

  void convidar() {
    print("Convite enviado");
  }

  String remarcar(String novaData) {
    print("Informe nova data\n");
    String novaData = stdin.readLineSync()!;
    return novaData;
  }
}

class Animal {
  String? nome;
  int idade = 0;
  int? codigo;

  void dormir() {
    print("$nome está dormindo!");
  }

  void comer() {
    print("$nome está comendo");
  }

  void aniversario() {
    idade++;
  }
}

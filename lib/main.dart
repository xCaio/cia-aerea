import 'dart:io';

import 'passageiro.dart';
import 'passagem.dart';
import 'voo.dart';

void main(List<String> args) {
  Passageiro caio = new Passageiro("123.456.789-10", "Caio", "R. das chacaras", "31-9-8216-6031");
  Passageiro teste = new Passageiro("123.436.784-11", "teste", "R. das chacaras", "31-9-8216-6031");
  Passagem passagem = new Passagem(2, 2, "BH");
  Voo voo = Voo();

  voo.escolhaVoo();
    
  // print(passagem.voo);
  // print(passagem.numero);
  // print(passagem.poltrona);


  // passagem.atribuirPassageiro(caio);
  // passagem.cadastraPassagens(passagem);
  // voo.cadastraPassageiros(caio);
  // voo.cadastraPassageiros(teste);
  // voo.passageiros;

  // voo.pesquisaPassageiro(caio);
  

}

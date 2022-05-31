import 'dart:io';

import 'passageiro.dart';
import 'passagem.dart';

enum TipoDestino {
    BH_RIO, BH_SP, BH_SALVADOR
  }

extension ExtensionTipoPagamento on TipoDestino{
  String? toValue(){
    Map map = {
      TipoDestino.BH_RIO: 'BH-RIO',
      TipoDestino.BH_SP: 'BH-SP',
      TipoDestino.BH_SALVADOR: 'BH-SALVADOR'
    };
  }
}

class Voo{
  String _aviao = "";
  List <String> destino = ["BH-RIO", "BH-SP", "BH-SALVADOR"];
  List<Passageiro> passageiros = [];

  String get aviao => _aviao;
  void set (String aviao) => aviao = _aviao;

  void escolhaVoo(){
    print("ESCOLHA\n");
    print("[1] ${destino[0]}");
    print("[2] ${destino[1]}");
    print("[3] ${destino[2]}");

    print("Escolha o voo:\n");
    int escolha = int.parse(stdin.readLineSync()!);

    if(escolha == 1){
      print("Você escolheu ${destino[0]}");
    }else if(escolha == 2){
      print("Você escolheu ${destino[1]}");
    }else if(escolha == 3){
      print("Você escolheu ${destino[2]}");
    }
  }



  void mostraPassageiros(){
    print(passageiros);
  }

  void cadastraPassageiros(Passageiro passageiro){
    passageiros.add(passageiro);
    print("Passageiro adicionado na lista de Voo");
    print(passageiros);
  }

  void pesquisaPassageiro(Passageiro passageiro){


    var pesquisa = passageiros.where((element) => passageiro == passageiro);

    
    print("Passageiro encontrado ");
    print(pesquisa);
  }

  
}



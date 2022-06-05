import 'passagem.dart';
import 'voo.dart';
class Passageiro{
  String cpf= "";
  String nome = "";
  String end = "";
  String tel = "";
  List<Voo> voo = [];
  List<Passagem> passagem = [];
  List<Passageiro> passageiros = [];
  List<Passageiro> espera = [];
  


@override
  String toString() {
    // TODO: implement toString
    return "\n\u{1F6EB} CPF: $cpf NOME: $nome\n";
  }

  Passageiro(cpf, nome, end, tel);

  void cadastraPassageiro(Passageiro passageiro){
    if(passageiros.length <= 4){
      passageiros.add(passageiro);
      print("Passageiro cadastrado:\n $passageiro");
      // print("Passageiro cadastrado:\n ${passageiros.where((element) => passageiro == passageiro)}");
    }else{
      espera.add(passageiro);
    }
  }

  void pesquisaPassageiro(String cpf){
    if(passageiros.isNotEmpty){
      int result = passageiros.indexWhere((element) => cpf == cpf);
      print("Passageiro encontrado!");
      print(passageiros[result]);
    }else{
      print("Passageiro não encontrado");
    }
    
  }

  void deletarPassageiro(Passageiro nome){
    int qtdAtual = passageiros.length;
    passageiros.removeWhere((element) => cpf == cpf);
    int qtdPos = passageiros.length;
    if(qtdAtual != qtdPos){
      print("Passageiro removido: $nome ");
      if(espera.isNotEmpty){
        passageiros.add(espera.first);
        espera.removeAt(0);
        print("Passageiro movido com sucesso");
      }else{
        print("Não há passageiros na lista de espera");
      }
    }else{
      print("Passageiro não encontrado");
    }
  }

  void mostrarListaEspera(){
    if(espera.isNotEmpty){
      for(var p in espera){
        int index = espera.indexOf(p);
        print("${index+1}: $p");
      }
    }else{
      if(passageiros.isNotEmpty){
        for(var p in passageiros){
          int index = passageiros.indexOf(p);
          print("${index + 1}: $p");
        }
      } else{
        print("Lista Vazia");
      }
    }
  }

}
import 'passageiro.dart';
import 'voo.dart';

class Passagem{
  int? numero;
  int? poltrona;
  String? voo;
  DateTime hora = DateTime.now();
  Passageiro passageiro = Passageiro("cpf", "nome", "end", "tel");
  late Voo vooPassageiro;
  List<Passageiro> passageiros =[];
  List<Passagem> passagens = [];
  List<Passagem> espera = [];

  Passagem(this.numero, this.poltrona, this.voo);

  @override
  String toString(){
    return "\u{1F6EB} Nº $numero - Poltrona $poltrona - ${hora.hour}hrs";
  }

  void atribuirPassageiro(Passageiro passageiro){
    this.passageiro = passageiro;
    print("Venda Realizada");
  }
  
  void cadastraPassagens(Passagem passagem){
    if(passageiros.length <= 4){
      passagens.add(passagem);
      print("Passagem Cadastrada: $passagem");
    } else{
      espera.add(passagem);
      print("Passageiro adicionado na lista de espera");
    }
  }


}
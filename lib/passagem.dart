import 'passageiro.dart';
import 'voo.dart';

class Passagem{
  int? numero;
  int? poltrona;
  String? voo;
  DateTime hora = DateTime.now();
  late Passageiro passageiro; 
  late Voo vooPassageiro;
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
    passagens.add(passagem);
    print("Passagem Cadastrada: $passagem");
  }


}
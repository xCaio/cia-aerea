import 'passagem.dart';
import 'voo.dart';
class Passageiro{
  String cpf= "";
  String nome = "";
  String end = "";
  String tel = "";
  List<Voo> voo = [];


@override
  String toString() {
    // TODO: implement toString
    return "\n\u{1F6EB} CPF: $cpf NOME: $nome\n";
  }

  Passageiro(cpf, nome, end, tel){
    this.cpf = cpf;
    this.nome = nome;
    this.end = end;
    this.tel = tel;


  }
}
import 'dart:io';
import 'passageiro.dart';
import 'passagem.dart';
import 'voo.dart';

void main(List<String> args) {
  Passageiro passageiroteste = Passageiro("cpf", 'nome', 'end', 'tel');
  Passageiro caio = new Passageiro("123.456.789-10", "Caio", "R. das chacaras", "31-9-8216-6031");
  caio.nome = "Caio";
  caio.cpf = "123.456.789-10";
  Passageiro ricardo = new Passageiro("254.658.249-12", "Ricardo", "R. da Horta", "31-9-6589-6257");
  ricardo.nome = "Ricardo";
  ricardo.cpf = "254.658.249-12";
  Passageiro borges = new Passageiro("847.734.956-14", "Borges", "R. Perdigão", "31-9-9563-5985");
  borges.nome = "Borges";
  borges.cpf = "847.734.956-14";
  Passageiro ana = new Passageiro("452.235.545-17", "Ana", "R. das Industrias", "31-9-3325-6523");
  ana.nome = "Ana";
  ana.cpf = "452.235.545-17";
  Passageiro julia = new Passageiro("654.521.687-32", "Julia", "R. Alface", "31-9-6524-9536");
  julia.nome = "Julia";
  julia.cpf = "654.521.687-32";
  Passageiro alice = new Passageiro("682.173.735-76", "Alice", "R. das Aguas", "31-9-9854-2158");
  alice.nome = "Alice";
  alice.cpf = "82.173.735-76";
  Passageiro bianka = new Passageiro("968.674.973-91", "Bianka", "R. Getulio Vargas", "31-9-6589-8281");
  bianka.nome = "Bianka";
  bianka.cpf = "968.674.973-91";
  Voo voo = Voo();
  Passagem passagem = new Passagem(2, 2, "BH");
  //ESCOLHENDO VOO
  print("ESCOLHENDO VOO");
  voo.escolhaVoo();

  //CADASTRANDO PASSAGEIROS
  print("CADASTRANDO PASSAGEIROS:");
  passageiroteste.cadastraPassageiro(caio);
  passageiroteste.cadastraPassageiro(ricardo);
  passageiroteste.cadastraPassageiro(borges);
  passageiroteste.cadastraPassageiro(ana);
  passageiroteste.cadastraPassageiro(julia);
  passageiroteste.cadastraPassageiro(alice);
  passageiroteste.cadastraPassageiro(bianka);

  print("LISTA DE PASSAGEIROS");
  print(passageiroteste.passageiros);

  print("MOSTRANDO LISTA DE ESPERA");
  passageiroteste.mostrarListaEspera();

  print("PESQUISANDO PASSAGEIRO");
  passageiroteste.pesquisaPassageiro("123.456.789-10");

  print("DELETANDO PASSAGEIRO");
  passageiroteste.deletarPassageiro(ana);

  

  
  


}

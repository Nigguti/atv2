import '../service/service.dart';

void main() {
  final banco = BancoService();

  banco.criarConta('1', 'Maria', 1000.0);
  banco.criarConta('2', 'Joao', 500.0);

  print('\nContas:');
  banco.listarContas().forEach((conta) => print(conta));
  banco.adicionarTransacao('t1', '1', -200.0);
  banco.adicionarTransacao('t2', '2', 300.0);
  banco.adicionarTransacao('t3', '1', -1500.0);

  print('\nTransações:');
  banco.listarTransacoes().forEach((transacao) => print(transacao));

  print('\nContas Atualizadas:');
  banco.listarContas().forEach((conta) => print(conta));
}
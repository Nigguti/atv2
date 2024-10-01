import '../models/conta.dart';
import '../models/transacao.dart';
import '../repository/repositories.dart';

class BancoService {
  final Repository<Conta> _contaRepository = Repository<Conta>();
  final Repository<Transacao> _transacaoRepository = Repository<Transacao>();

  void criarConta(String id, String titular, [double saldoInicial = 0.0]) {
    final conta = Conta(id: id, titular: titular, saldo: saldoInicial);
    _contaRepository.adicionar(conta);
    print('Conta criada: $conta');
  }

  Conta? buscarConta(String id) {
    return _contaRepository.buscarPorId(id);
  }

  List<Conta> listarContas() {
    return _contaRepository.listar();
  }

  void adicionarTransacao(String id, String contaId, double valor) {
    final conta = buscarConta(contaId);
    if (conta == null) {
      print('Conta não encontrada.');
      return;
    }

    if (conta.saldo + valor < 0) {
      print('Saldo insuficiente para a transação.');
      return;
    }

    final transacao = Transacao(id: id, contaId: contaId, valor: valor);
    _transacaoRepository.adicionar(transacao);
    conta.saldo += valor;
    print('Transação realizada: $transacao');
    print('Novo saldo da conta ${conta.titular}: ${conta.saldo}');
  }

  List<Transacao> listarTransacoes() {
    return _transacaoRepository.listar();
  }
}
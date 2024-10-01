class Conta {
  final String id;
  final String titular;
  double saldo;

  Conta({required this.id, required this.titular, this.saldo = 0.0});

  @override
  String toString() {
    return 'Conta{id: $id, titular: $titular, saldo: $saldo}';
  }
}
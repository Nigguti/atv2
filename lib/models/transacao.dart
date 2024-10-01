class Transacao {
  final String id;
  final String contaId;
  final double valor;
  final DateTime data;

  Transacao({
    required this.id,
    required this.contaId,
    required this.valor,
    DateTime? data,
  }) : data = data ?? DateTime.now();

  @override
  String toString() {
    return 'Transacao{id: $id, contaId: $contaId, valor: $valor, data: $data}';
  }
}
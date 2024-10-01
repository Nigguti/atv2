class Repository<T> {
  final List<T> _itens = [];

  void adicionar(T item) {
    _itens.add(item);
  }

  void remover(T item) {
    _itens.remove(item);
  }

  List<T> listar() {
    return List.unmodifiable(_itens);
  }

  T? buscarPorId(String id) {
    return _itens.firstWhere(
      (item) => (item as dynamic).id == id
    );
  }
}
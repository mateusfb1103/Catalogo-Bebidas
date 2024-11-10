import '../models/bebida.dart';
import '../models/harmonizacao.dart';

class BebidaService {
  List<Bebida> _bebidas = [
    Bebida(id: 1, nome: "Vinho Tinto", tipo: "Vinho", harmonizacoes: [
      Harmonizacao(id: 1, descricao: "Queijo"),
      Harmonizacao(id: 2, descricao: "Carne Vermelha"),
    ])
  ];

  List<Bebida> getBebidas() => _bebidas;

  void addBebida(Bebida bebida) {
    _bebidas.add(bebida);
  }

  void editBebida(Bebida bebida) {
    _bebidas = _bebidas.map((b) => b.id == bebida.id ? bebida : b).toList();
  }

  void deleteBebida(int id) {
    _bebidas.removeWhere((b) => b.id == id);
  }
}

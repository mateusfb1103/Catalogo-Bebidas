import 'harmonizacao.dart';

class Bebida {
  final int id;
  final String nome;
  final String tipo;
  final List<Harmonizacao> harmonizacoes;

  Bebida({
    required this.id,
    required this.nome,
    required this.tipo,
    this.harmonizacoes = const [],
  });
}

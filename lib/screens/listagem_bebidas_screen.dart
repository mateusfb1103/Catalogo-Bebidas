import 'package:flutter/material.dart';
import '../services/bebida_service.dart';
import '../widgets/bebida_card.dart';

class ListagemBebidasScreen extends StatelessWidget {
  final BebidaService bebidaService = BebidaService();

  @override
  Widget build(BuildContext context) {
    final bebidas = bebidaService.getBebidas();
    return Scaffold(
      appBar: AppBar(title: Text("Listagem de Bebidas")),
      body: ListView.builder(
        itemCount: bebidas.length,
        itemBuilder: (context, index) {
          return BebidaCard(bebida: bebidas[index]);
        },
      ),
    );
  }
}

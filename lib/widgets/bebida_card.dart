import 'package:flutter/material.dart';
import '../models/bebida.dart';

class BebidaCard extends StatelessWidget {
  final Bebida bebida;

  const BebidaCard({required this.bebida});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(bebida.nome),
        subtitle: Text(bebida.tipo),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/bebida.dart';
import '../models/harmonizacao.dart';
import '../services/bebida_service.dart';
import '../widgets/harmonizacao_form.dart';

class FormularioBebidaScreen extends StatefulWidget {
  @override
  _FormularioBebidaScreenState createState() => _FormularioBebidaScreenState();
}

class _FormularioBebidaScreenState extends State<FormularioBebidaScreen> {
  final _nomeController = TextEditingController();
  final _tipoController = TextEditingController();
  List<Harmonizacao> harmonizacoes = [];

  void adicionarHarmonizacao(String descricao) {
    setState(() {
      harmonizacoes.add(Harmonizacao(id: harmonizacoes.length + 1, descricao: descricao));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adicionar Bebida")),
      body: Column(
        children: [
          TextField(controller: _nomeController, decoration: InputDecoration(labelText: 'Nome')),
          TextField(controller: _tipoController, decoration: InputDecoration(labelText: 'Tipo')),
          HarmonizacaoForm(onSubmit: adicionarHarmonizacao),
          ElevatedButton(
            onPressed: () {
              final bebida = Bebida(
                id: DateTime.now().millisecondsSinceEpoch,
                nome: _nomeController.text,
                tipo: _tipoController.text,
                harmonizacoes: harmonizacoes,
              );
              BebidaService().addBebida(bebida);
              Navigator.pop(context);
            },
            child: Text("Salvar"),
          ),
        ],
      ),
    );
  }
}

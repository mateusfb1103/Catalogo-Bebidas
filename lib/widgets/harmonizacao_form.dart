import 'package:flutter/material.dart';

class HarmonizacaoForm extends StatefulWidget {
  final Function(String) onSubmit;

  // ignore: prefer_const_constructors_in_immutables
  HarmonizacaoForm({required this.onSubmit});

  @override
  _HarmonizacaoFormState createState() => _HarmonizacaoFormState();
}

class _HarmonizacaoFormState extends State<HarmonizacaoForm> {
  final _descricaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _descricaoController,
          decoration: InputDecoration(labelText: "Descrição de Harmonização"),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSubmit(_descricaoController.text);
            _descricaoController.clear();
          },
          child: Text("Adicionar Harmonização"),
        ),
      ],
    );
  }
}

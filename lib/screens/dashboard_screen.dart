import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catálogo de Bebidas")),
      body: Center(child: Text("Bem-vindo ao Catálogo de Bebidas!")),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Dashboard"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text("Listagem de Bebidas"),
              onTap: () {
                Navigator.pushNamed(context, '/listagem');
              },
            ),
            ListTile(
              title: Text("Adicionar Bebida"),
              onTap: () {
                Navigator.pushNamed(context, '/formulario');
              },
            ),
          ],
        ),
      ),
    );
  }
}

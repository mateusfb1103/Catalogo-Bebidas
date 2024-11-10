import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/listagem_bebidas_screen.dart';
import 'screens/formulario_bebida_screen.dart';

void main() {
  runApp(CatalogoBebidasApp());
}

class CatalogoBebidasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo de Bebidas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardScreen(),
        '/listagem': (context) => ListagemBebidasScreen(),
        '/formulario': (context) => FormularioBebidaScreen(),
      },
    );
  }
}

import 'package:flutter_test/flutter_test.dart';

import 'package:catalogo_bebidas/main.dart'; // Certifique-se de que o caminho para o main.dart está correto

void main() {
  testWidgets('Tela inicial do aplicativo mostra o texto de boas-vindas', (WidgetTester tester) async {
    // Constrói o app e o carrega no teste.
    await tester.pumpWidget(CatalogoBebidasApp());

    // Verifica se o texto de boas-vindas aparece na tela.
    expect(find.text('Bem-vindo ao Catálogo de Bebidas!'), findsOneWidget);
  });
}

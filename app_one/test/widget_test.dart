// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:app_one/main.dart';

void main() {
  testWidgets('Muestra la pantalla principal de la tienda', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TiendaApp());

    expect(find.text('Tienda App'), findsOneWidget);
    expect(find.text('Hola Fabio'), findsOneWidget);
    expect(find.text('Que vamos a comprar hoy?'), findsOneWidget);
    expect(find.text('Hasta 30% de descuento'), findsOneWidget);
    expect(
      find.text('En productos seleccionados de esta semana'),
      findsOneWidget,
    );
  });
}

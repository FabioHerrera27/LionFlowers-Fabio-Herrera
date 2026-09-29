import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pantallas_proyecto/main.dart';
import 'package:pantallas_proyecto/screens/login_screen.dart';

void main() {
  testWidgets('El splash abre el login automáticamente', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Red Anáhuac'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('Iniciar Sesión'), findsOneWidget);
    expect(find.text('Red Anáhuac'), findsNothing);
  });

  testWidgets('Valida el ID y avisa que el acceso está pendiente', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));
    await tester.tap(find.text('Ingresar'));
    await tester.pumpAndSettle();
    expect(find.text('Ingresa tu ID de encuestador.'), findsOneWidget);
    await tester.enterText(find.byType(TextFormField), '9582');
    await tester.tap(find.text('Ingresar'));
    await tester.pumpAndSettle();
    expect(find.textContaining('ID 9582 capturado.'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('El login permite desplazarse con el teclado abierto', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    tester.view.viewInsets = const FakeViewPadding(bottom: 260);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetViewInsets);
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));
    await tester.ensureVisible(find.text('Ingresar'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}

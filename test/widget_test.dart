// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:primer_proyecto_flutter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our app starts with the text 'Inicio'.
    expect(find.text('Inicio'), findsOneWidget);

    // Now let's test the navigation to the ListProductsPage.
    // Tap the 'Ir a lista de productos' button.
    await tester.tap(find.text('Ir a lista de productos'));
    await tester.pumpAndSettle();

    // Verify that we have navigated to the ListProductsPage.
    expect(find.text('Lista de Productos'), findsOneWidget);

    // You can continue testing other functionalities as needed.
  });
}

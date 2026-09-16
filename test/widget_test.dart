import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tes/tesla_app.dart';

void main() {
  testWidgets('TeslaApp smoke test', (WidgetTester tester) async {
    // بناء التطبيق
    await tester.pumpWidget(const TeslaApp());

    // التحقق من أن التطبيق يعمل ويعرض الـ Scaffold
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:socialapp1/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Uygulamayı oluşturun ve bir çerçeve (frame) tetikleyin.
    await tester.pumpWidget(MyApp());

    // İlk olarak sayacımızın '0' olduğunu doğrulayın.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // '+' simgesine dokunun ve bir çerçeve tetikleyin.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Sayacımızın '1' olduğunu doğrulayın.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

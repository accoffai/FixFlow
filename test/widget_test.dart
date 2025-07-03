import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:fix_flow_a_i/main.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Load the app
    await tester.pumpWidget(MyApp()); // ❌ Don't use const here

    // Initial state
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the + button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // After tap
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:fix_flow_a_i/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    // Mocks Firebase initialization
    FirebasePlatform.instance = FakeFirebasePlatform();
    await Firebase.initializeApp();
  });

  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class FakeFirebasePlatform extends FirebasePlatform {
  FakeFirebasePlatform() : super();

  @override
  Future<FirebaseAppPlatform> initializeApp({
    required String name,
    FirebaseOptions? options,
  }) async {
    return FakeFirebaseAppPlatform(name, options);
  }
}

class FakeFirebaseAppPlatform extends FirebaseAppPlatform {
  FakeFirebaseAppPlatform(String name, FirebaseOptions? options)
      : super(name, options);
}


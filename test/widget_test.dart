// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:praktikum_flutter2/main.dart';

void main() {
  testWidgets('Login page loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp(isLoggedIn: false));

    // Verify that login page is shown.
    expect(find.text('Selamat Datang!'), findsOneWidget);
    expect(find.text('Login'), findsWidgets);
  });

  testWidgets('Home page loads when logged in', (WidgetTester tester) async {
    // Build our app and trigger a frame with logged in state.
    await tester.pumpWidget(const MyApp(isLoggedIn: true));

    // Verify that home page elements are shown.
    expect(find.text('Home'), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:portfolio_app_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('', (tester) async {
      // Load app widget.
      await tester.pumpWidget(ProviderScope(child: MainApp()));

      await tester.tap(find.textContaining(RegExp(r'.*Blog.*')));
      await tester.pumpAndSettle();

      await tester.dragUntilVisible(
        find.textContaining(RegExp(r'Kotlin.*')),
        find.byKey(Key('post-list-view')),
        const Offset(0.0, -300),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.textContaining(RegExp(r'Kotlin.*')));
      await tester.pumpAndSettle();

      await tester.tapAt(Offset(10, 20));
    });
  });
}

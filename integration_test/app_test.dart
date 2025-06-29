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

      expect(find.text('純東北産麦芽系エンジニア'), findsOneWidget);

      await tester.dragUntilVisible(
        find.bySemanticsIdentifier('hatenablog'),
        find.byType(SingleChildScrollView),
        const Offset(0.0, -300),
      );

      await tester.tap(find.textContaining(RegExp(r'.*Blog.*')));
      await tester.pumpAndSettle();

      expect(find.text('Blog'), findsWidgets);

      await tester.dragUntilVisible(
        find.bySemanticsIdentifier('post-blog-10'),
        find.byKey(Key('post-list-view')),
        const Offset(0.0, -300),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.bySemanticsIdentifier('post-blog-10'));
      await tester.pumpAndSettle();
    });
  });
}

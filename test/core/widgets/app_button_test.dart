import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/core/widgets/app_button.dart';

import '../../helpers/test_helpers.dart';

void main() {
  group('AppButton', () {
    testWidgets('calls onPressed when tapped', (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        createTestableWidgetWithScaffold(
          AppButton(label: 'Tap', onPressed: () => tapped = true),
        ),
      );

      await tester.tap(find.byType(AppButton));
      expect(tapped, isTrue);
    });

    testWidgets('shows spinner when loading', (tester) async {
      await tester.pumpWidget(
        createTestableWidgetWithScaffold(
          AppButton(label: 'Loading', isLoading: true, onPressed: () {}),
        ),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('disabled when isEnabled false', (tester) async {
      var tapped = false;

      await tester.pumpWidget(
        createTestableWidgetWithScaffold(
          AppButton(label: 'Disabled', isEnabled: false, onPressed: () => tapped = true),
        ),
      );

      await tester.tap(find.byType(AppButton));
      expect(tapped, isFalse);
    });
  });
}

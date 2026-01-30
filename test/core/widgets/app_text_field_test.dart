import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/core/widgets/app_text_field.dart';

import '../../helpers/test_helpers.dart';

void main() {
  group('AppTextField', () {
    testWidgets('displays label', (tester) async {
      await tester.pumpWidget(
        createTestableWidgetWithScaffold(const AppTextField(label: 'Email')),
      );

      expect(find.text('Email'), findsOneWidget);
    });

    testWidgets('calls onChanged', (tester) async {
      String? value;

      await tester.pumpWidget(
        createTestableWidgetWithScaffold(
          AppTextField(label: 'Input', onChanged: (v) => value = v),
        ),
      );

      await tester.enterText(find.byType(TextFormField), 'test');
      expect(value, equals('test'));
    });

    testWidgets('password factory has lock icon', (tester) async {
      await tester.pumpWidget(
        createTestableWidgetWithScaffold(AppTextField.password()),
      );

      expect(find.byIcon(Icons.lock_outlined), findsOneWidget);
    });
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/core/theme/app_theme.dart';
import 'package:olearis/features/auth/presentation/pages/sign_in_page.dart';

void main() {
  group('SignInPage Golden', () {
    testWidgets('portrait', (tester) async {
      tester.view.physicalSize = const Size(390, 844); // iPhone 14
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            theme: AppTheme.light,
            home: const SignInPage(),
          ),
        ),
      );

      await expectLater(
        find.byType(SignInPage),
        matchesGoldenFile('goldens/sign_in_page_portrait.png'),
      );

      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    testWidgets('landscape', (tester) async {
      tester.view.physicalSize = const Size(844, 390); // iPhone 14 landscape
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            theme: AppTheme.light,
            home: const SignInPage(),
          ),
        ),
      );

      await expectLater(
        find.byType(SignInPage),
        matchesGoldenFile('goldens/sign_in_page_landscape.png'),
      );

      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });
  });
}

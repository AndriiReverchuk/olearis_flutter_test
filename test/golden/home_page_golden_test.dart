import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:olearis/core/theme/app_theme.dart';
import 'package:olearis/features/home/application/home_controller.dart';
import 'package:olearis/features/home/application/home_state.dart';
import 'package:olearis/features/home/presentation/pages/home_page.dart';

void main() {
  group('HomePage Golden', () {
    testWidgets('portrait', (tester) async {
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            homeControllerProvider.overrideWith(
              () => _MockHomeController(),
            ),
          ],
          child: MaterialApp(
            theme: AppTheme.light,
            home: const HomePage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await expectLater(
        find.byType(HomePage),
        matchesGoldenFile('goldens/home_page_portrait.png'),
      );

      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    testWidgets('landscape', (tester) async {
      tester.view.physicalSize = const Size(844, 390);
      tester.view.devicePixelRatio = 1.0;

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            homeControllerProvider.overrideWith(
              () => _MockHomeController(),
            ),
          ],
          child: MaterialApp(
            theme: AppTheme.light,
            home: const HomePage(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      await expectLater(
        find.byType(HomePage),
        matchesGoldenFile('goldens/home_page_landscape.png'),
      );

      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });
  });
}

class _MockHomeController extends HomeController {
  @override
  Stream<HomeState> build() => Stream.value(const HomeState());
}

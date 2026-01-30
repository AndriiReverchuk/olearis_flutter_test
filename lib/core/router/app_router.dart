import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/presentation/pages/sign_in_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import 'routes.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: Routes.signIn,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.signIn,
        name: Routes.signInName,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: Routes.home,
        name: Routes.homeName,
        builder: (context, state) => const HomePage(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.uri}'),
      ),
    ),
  );
}

extension GoRouterX on BuildContext {
  void goToSignIn() => goNamed(Routes.signInName);
  void goToHome() => goNamed(Routes.homeName);
}

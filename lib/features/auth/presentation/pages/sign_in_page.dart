import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../application/sign_in_controller.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/continue_button.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      signInControllerProvider.select((s) => s.isSuccess),
      (previous, isSuccess) {
        if (isSuccess) {
          context.goNamed(Routes.homeName);
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final viewInsetsBottom = MediaQuery.viewInsetsOf(context).bottom;
            const verticalPadding = AppSpacing.md + AppSpacing.md;
            final minHeight = (constraints.maxHeight - verticalPadding - viewInsetsBottom)
                .clamp(0.0, double.infinity);

            return Scrollbar(
              thumbVisibility: true,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.fromLTRB(
                  AppSpacing.md,
                  AppSpacing.md,
                  AppSpacing.md,
                  AppSpacing.md + viewInsetsBottom,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: minHeight,
                  ),
                  child: const IntrinsicHeight(
                    child: _SignInContent(),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _SignInContent extends StatelessWidget {
  const _SignInContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: AppSpacing.xl),
          child: AppLogo(),
        ),
        SizedBox(height: AppSpacing.md),
        Spacer(),
        SignInForm(),
        SizedBox(height: AppSpacing.md),
        Spacer(),
        ContinueButton(),
      ],
    );
  }
}

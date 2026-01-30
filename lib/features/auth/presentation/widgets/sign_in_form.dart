import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../../../core/widgets/app_text_field.dart';
import '../../application/sign_in_controller.dart';

class SignInForm extends ConsumerWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(signInControllerProvider.notifier);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppTextField(
          label: 'Login',
          onChanged: controller.onLoginChanged,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(height: AppSpacing.md),
        AppTextField(
          label: 'Password',
          obscureText: true,
          onChanged: controller.onPasswordChanged,
          textInputAction: TextInputAction.done,
          onSubmitted: (_) => _onSubmit(ref),
        ),
      ],
    );
  }

  void _onSubmit(WidgetRef ref) {
    ref.read(signInControllerProvider.notifier).submit();
  }
}

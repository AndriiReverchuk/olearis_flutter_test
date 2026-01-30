import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../application/sign_in_controller.dart';

class ContinueButton extends ConsumerWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(
      signInControllerProvider.select((s) => s.isLoading),
    );
    final canSubmit = ref.watch(
      signInControllerProvider.select((s) => s.canSubmit),
    );

    return AppButton(
      label: 'Continue',
      isLoading: isLoading,
      isEnabled: canSubmit,
      height: AppSpacing.buttonHeightSm,
      width: AppSpacing.buttonWidthSm,
      expand: false,
      onPressed: () {
        ref.read(signInControllerProvider.notifier).submit();
      },
    );
  }
}

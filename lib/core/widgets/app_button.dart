import 'package:flutter/material.dart';

import '../constants/app_spacing.dart';

enum AppButtonType { primary, secondary, text, destructive }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.type = AppButtonType.primary,
    this.isLoading = false,
    this.isEnabled = true,
    this.icon,
    this.width,
    this.height,
    this.expand = true,
  });

  final VoidCallback? onPressed;
  final String label;
  final AppButtonType type;
  final bool isLoading;
  final bool isEnabled;
  final IconData? icon;
  final double? width;
  final double? height;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final effectiveOnPressed = isEnabled && !isLoading ? onPressed : null;

    final child = isLoading
        ? const SizedBox(
            width: AppSpacing.spinnerSize,
            height: AppSpacing.spinnerSize,
            child: CircularProgressIndicator(
                strokeWidth: AppSpacing.borderWidthMd),
          )
        : _buildContent();

    final button = switch (type) {
      AppButtonType.primary => ElevatedButton(
          onPressed: effectiveOnPressed,
          child: child,
        ),
      AppButtonType.secondary => OutlinedButton(
          onPressed: effectiveOnPressed,
          child: child,
        ),
      AppButtonType.text => TextButton(
          onPressed: effectiveOnPressed,
          child: child,
        ),
      AppButtonType.destructive => ElevatedButton(
          onPressed: effectiveOnPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
          ),
          child: child,
        ),
    };

    final effectiveWidth = width ?? (expand ? double.infinity : null);

    if (effectiveWidth == null) {
      return SizedBox(
        height: height ?? AppSpacing.buttonHeight,
        child: button,
      );
    }

    return SizedBox(
      width: effectiveWidth,
      height: height ?? AppSpacing.buttonHeight,
      child: button,
    );
  }

  Widget _buildContent() {
    if (icon == null) {
      return Text(label);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: AppSpacing.iconSizeSm),
        const SizedBox(width: AppSpacing.sm),
        Text(label),
      ],
    );
  }
}

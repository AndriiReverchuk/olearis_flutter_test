import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_spacing.dart';
import '../constants/asset_paths.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.showBorder = false,
    this.maxWidth,
  });

  final bool showBorder;
  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    final effectiveMaxWidth = maxWidth ?? AppSpacing.logoMaxWidth;
    final image = SvgPicture.asset(
      AssetPaths.logo,
      width: effectiveMaxWidth,
      fit: BoxFit.contain,
    );

    if (!showBorder) return image;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.logoBorderPaddingH,
        vertical: AppSpacing.logoBorderPaddingV,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: AppSpacing.borderWidth,
        ),
        borderRadius: BorderRadius.circular(AppSpacing.radiusLg),
      ),
      child: image,
    );
  }
}

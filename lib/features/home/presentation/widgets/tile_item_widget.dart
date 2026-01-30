import 'package:flutter/material.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../domain/entities/tile_item.dart';

class TileItemWidget extends StatelessWidget {
  const TileItemWidget({
    super.key,
    required this.tile,
  });

  final TileItem tile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: AppSpacing.borderWidth,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        tile.title,
        style: theme.textTheme.bodyMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}

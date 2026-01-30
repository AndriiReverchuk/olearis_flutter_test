import 'package:flutter/material.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../domain/entities/tile_item.dart';
import 'tile_item_widget.dart';

class TilesGrid extends StatelessWidget {
  const TilesGrid({
    super.key,
    required this.tiles,
  });

  final List<TileItem> tiles;

  @override
  Widget build(BuildContext context) {
    if (tiles.isEmpty) return const SizedBox.shrink();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(AppSpacing.tileMargin),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: AppSpacing.gridColumns,
        crossAxisSpacing: AppSpacing.tileMargin,
        mainAxisSpacing: AppSpacing.tileMargin,
        childAspectRatio: AppSpacing.tileAspectRatio,
      ),
      itemCount: tiles.length,
      itemBuilder: (context, index) {
        final tile = tiles[index];
        return TileItemWidget(
          key: ValueKey(tile.id),
          tile: tile,
        );
      },
    );
  }
}

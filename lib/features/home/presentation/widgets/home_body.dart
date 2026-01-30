import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_spacing.dart';
import '../../../../core/widgets/app_logo.dart';
import '../../application/home_controller.dart';
import '../../domain/entities/tile_item.dart';
import 'tiles_grid.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(homeControllerProvider);

    return asyncState.when(
      data: (state) => _HomeLayout(tiles: state.tiles),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}

class _HomeLayout extends StatelessWidget {
  const _HomeLayout({required this.tiles});

  final List<TileItem> tiles;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final tilesHeight = _calculateTilesHeight(constraints.maxWidth);
        final availableHeight = constraints.maxHeight;
        const logoPadding = AppSpacing.md + AppSpacing.md;
        final logoSpace = availableHeight - tilesHeight;
        final needsScroll = logoSpace < AppSpacing.logoMinHeight + logoPadding;

        if (needsScroll && tiles.isNotEmpty) {
          return _ScrollableLayout(tiles: tiles);
        }

        return _FixedLayout(tiles: tiles);
      },
    );
  }

  double _calculateTilesHeight(double screenWidth) {
    if (tiles.isEmpty) return 0;

    final tileWidth =
        (screenWidth - AppSpacing.tileMargin * 3) / AppSpacing.gridColumns;
    final tileHeight = tileWidth / AppSpacing.tileAspectRatio;
    final rows = (tiles.length / AppSpacing.gridColumns).ceil();

    return rows * (tileHeight + AppSpacing.tileMargin) + AppSpacing.tileMargin;
  }
}

class _FixedLayout extends StatelessWidget {
  const _FixedLayout({required this.tiles});

  final List<TileItem> tiles;

  @override
  Widget build(BuildContext context) {
    if (tiles.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.logoMinMargin),
          child: AppLogo(showBorder: true),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.logoMinMargin,
              ),
              child: const AppLogo(showBorder: true),
            ),
          ),
        ),
        TilesGrid(tiles: tiles),
      ],
    );
  }
}

class _ScrollableLayout extends StatelessWidget {
  const _ScrollableLayout({required this.tiles});

  final List<TileItem> tiles;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.logoMinMargin,
                  vertical: AppSpacing.xl,
                ),
                child: AppLogo(showBorder: true),
              ),
            ),
            TilesGrid(tiles: tiles),
          ],
        ),
      ),
    );
  }
}

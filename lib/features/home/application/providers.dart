import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../di/providers.dart';
import '../domain/repositories/tiles_repository.dart';
import '../infrastructure/repositories/tiles_repository_impl.dart';
import 'use_cases/add_tile_use_case.dart';
import 'use_cases/remove_tile_use_case.dart';
import 'use_cases/watch_tiles_use_case.dart';

part 'providers.g.dart';

@riverpod
TilesRepository tilesRepository(Ref ref) {
  final dao = ref.watch(tilesDaoProvider);
  return TilesRepositoryImpl(dao);
}

@riverpod
WatchTilesUseCase watchTilesUseCase(Ref ref) {
  return WatchTilesUseCase(ref.watch(tilesRepositoryProvider));
}

@riverpod
AddTileUseCase addTileUseCase(Ref ref) {
  return AddTileUseCase(ref.watch(tilesRepositoryProvider));
}

@riverpod
RemoveTileUseCase removeTileUseCase(Ref ref) {
  return RemoveTileUseCase(ref.watch(tilesRepositoryProvider));
}

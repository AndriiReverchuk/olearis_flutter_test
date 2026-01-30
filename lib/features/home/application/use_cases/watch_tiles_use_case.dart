import '../../domain/entities/tile_item.dart';
import '../../domain/repositories/tiles_repository.dart';

class WatchTilesUseCase {
  final TilesRepository _repository;

  WatchTilesUseCase(this._repository);

  Stream<List<TileItem>> execute() {
    return _repository.watchTiles();
  }
}

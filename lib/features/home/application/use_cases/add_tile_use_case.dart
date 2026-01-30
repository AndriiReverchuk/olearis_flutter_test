import '../../domain/entities/tile_item.dart';
import '../../domain/repositories/tiles_repository.dart';

class AddTileUseCase {
  final TilesRepository _repository;

  AddTileUseCase(this._repository);

  Future<void> execute() async {
    final nextIndex = await _repository.getNextIndex();
    final newTile = TileItem.create(nextIndex);
    await _repository.addTile(newTile);
  }
}

import '../entities/tile_item.dart';

abstract class TilesRepository {
  Stream<List<TileItem>> watchTiles();

  Future<List<TileItem>> getTiles();

  Future<void> addTile(TileItem tile);

  Future<void> removeLastTile();

  Future<void> clearAllTiles();

  Future<int> getNextIndex();
}

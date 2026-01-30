import '../../../../database/daos/tiles_dao.dart';
import '../../domain/entities/tile_item.dart';
import '../../domain/repositories/tiles_repository.dart';
import '../mappers/tile_mapper.dart';

class TilesRepositoryImpl implements TilesRepository {
  final TilesDao _dao;

  TilesRepositoryImpl(this._dao);

  @override
  Stream<List<TileItem>> watchTiles() {
    return _dao.watchAllTiles().map(
          (dbTiles) => dbTiles.map(TileMapper.toDomain).toList(),
        );
  }

  @override
  Future<List<TileItem>> getTiles() async {
    final dbTiles = await _dao.getAllTiles();
    return dbTiles.map(TileMapper.toDomain).toList();
  }

  @override
  Future<void> addTile(TileItem tile) async {
    await _dao.insertTile(TileMapper.toCompanion(tile));
  }

  @override
  Future<void> removeLastTile() async {
    await _dao.deleteLastTile();
  }

  @override
  Future<void> clearAllTiles() async {
    await _dao.deleteAllTiles();
  }

  @override
  Future<int> getNextIndex() async {
    return await _dao.getNextIndex();
  }
}

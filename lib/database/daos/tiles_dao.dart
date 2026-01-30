import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/tiles_table.dart';

part 'tiles_dao.g.dart';

@DriftAccessor(tables: [TilesTable])
class TilesDao extends DatabaseAccessor<AppDatabase> with _$TilesDaoMixin {
  TilesDao(super.db);

  Future<List<TilesTableData>> getAllTiles() => (select(tilesTable)
        ..orderBy([(t) => OrderingTerm(expression: t.tileIndex)]))
      .get();

  Stream<List<TilesTableData>> watchAllTiles() => (select(tilesTable)
        ..orderBy([(t) => OrderingTerm(expression: t.tileIndex)]))
      .watch();

  Future<TilesTableData?> getTileByUid(String uid) =>
      (select(tilesTable)..where((t) => t.uid.equals(uid))).getSingleOrNull();

  Future<int> insertTile(TilesTableCompanion tile) =>
      into(tilesTable).insert(tile);

  Future<int> deleteLastTile() async {
    final tiles = await getAllTiles();
    if (tiles.isEmpty) return 0;
    return (delete(tilesTable)..where((t) => t.id.equals(tiles.last.id))).go();
  }

  Future<int> deleteAllTiles() => delete(tilesTable).go();

  Future<int> getNextIndex() async {
    final tiles = await getAllTiles();
    if (tiles.isEmpty) return 0;
    return tiles.last.tileIndex + 1;
  }
}

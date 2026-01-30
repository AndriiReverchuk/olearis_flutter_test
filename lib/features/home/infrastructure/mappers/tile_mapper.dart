import 'package:drift/drift.dart';

import '../../../../database/app_database.dart';
import '../../domain/entities/tile_item.dart';

abstract final class TileMapper {
  static TileItem toDomain(TilesTableData dbTile) {
    return TileItem(
      id: dbTile.uid,
      title: dbTile.title,
      index: dbTile.tileIndex,
    );
  }

  static TilesTableCompanion toCompanion(TileItem tile) {
    return TilesTableCompanion(
      uid: Value(tile.id),
      title: Value(tile.title),
      tileIndex: Value(tile.index),
    );
  }
}

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables/tiles_table.dart';
import 'daos/tiles_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [TilesTable],
  daos: [TilesDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
        onUpgrade: (Migrator m, int from, int to) async {},
      );

  @override
  TilesDao get tilesDao => TilesDao(this);
}

QueryExecutor _openConnection() {
  return driftDatabase(name: 'olearis_database');
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../database/app_database.dart';
import '../database/daos/tiles_dao.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());

  return db;
}

@riverpod
TilesDao tilesDao(Ref ref) {
  return ref.watch(appDatabaseProvider).tilesDao;
}

import 'package:drift/drift.dart';

class TilesTable extends Table {
  /// Primary key
  IntColumn get id => integer().autoIncrement()();
  TextColumn get uid => text().unique()();
  TextColumn get title => text()();
  IntColumn get tileIndex => integer()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

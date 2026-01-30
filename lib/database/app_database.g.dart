// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TilesTableTable extends TilesTable
    with TableInfo<$TilesTableTable, TilesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TilesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _uidMeta = const VerificationMeta('uid');
  @override
  late final GeneratedColumn<String> uid = GeneratedColumn<String>(
      'uid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tileIndexMeta =
      const VerificationMeta('tileIndex');
  @override
  late final GeneratedColumn<int> tileIndex = GeneratedColumn<int>(
      'tile_index', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [id, uid, title, tileIndex, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tiles_table';
  @override
  VerificationContext validateIntegrity(Insertable<TilesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('uid')) {
      context.handle(
          _uidMeta, uid.isAcceptableOrUnknown(data['uid']!, _uidMeta));
    } else if (isInserting) {
      context.missing(_uidMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('tile_index')) {
      context.handle(_tileIndexMeta,
          tileIndex.isAcceptableOrUnknown(data['tile_index']!, _tileIndexMeta));
    } else if (isInserting) {
      context.missing(_tileIndexMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TilesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TilesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      uid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uid'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      tileIndex: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tile_index'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $TilesTableTable createAlias(String alias) {
    return $TilesTableTable(attachedDatabase, alias);
  }
}

class TilesTableData extends DataClass implements Insertable<TilesTableData> {
  /// Primary key
  final int id;
  final String uid;
  final String title;
  final int tileIndex;
  final DateTime createdAt;
  const TilesTableData(
      {required this.id,
      required this.uid,
      required this.title,
      required this.tileIndex,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['uid'] = Variable<String>(uid);
    map['title'] = Variable<String>(title);
    map['tile_index'] = Variable<int>(tileIndex);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TilesTableCompanion toCompanion(bool nullToAbsent) {
    return TilesTableCompanion(
      id: Value(id),
      uid: Value(uid),
      title: Value(title),
      tileIndex: Value(tileIndex),
      createdAt: Value(createdAt),
    );
  }

  factory TilesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TilesTableData(
      id: serializer.fromJson<int>(json['id']),
      uid: serializer.fromJson<String>(json['uid']),
      title: serializer.fromJson<String>(json['title']),
      tileIndex: serializer.fromJson<int>(json['tileIndex']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'uid': serializer.toJson<String>(uid),
      'title': serializer.toJson<String>(title),
      'tileIndex': serializer.toJson<int>(tileIndex),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TilesTableData copyWith(
          {int? id,
          String? uid,
          String? title,
          int? tileIndex,
          DateTime? createdAt}) =>
      TilesTableData(
        id: id ?? this.id,
        uid: uid ?? this.uid,
        title: title ?? this.title,
        tileIndex: tileIndex ?? this.tileIndex,
        createdAt: createdAt ?? this.createdAt,
      );
  TilesTableData copyWithCompanion(TilesTableCompanion data) {
    return TilesTableData(
      id: data.id.present ? data.id.value : this.id,
      uid: data.uid.present ? data.uid.value : this.uid,
      title: data.title.present ? data.title.value : this.title,
      tileIndex: data.tileIndex.present ? data.tileIndex.value : this.tileIndex,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TilesTableData(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('title: $title, ')
          ..write('tileIndex: $tileIndex, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, uid, title, tileIndex, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TilesTableData &&
          other.id == this.id &&
          other.uid == this.uid &&
          other.title == this.title &&
          other.tileIndex == this.tileIndex &&
          other.createdAt == this.createdAt);
}

class TilesTableCompanion extends UpdateCompanion<TilesTableData> {
  final Value<int> id;
  final Value<String> uid;
  final Value<String> title;
  final Value<int> tileIndex;
  final Value<DateTime> createdAt;
  const TilesTableCompanion({
    this.id = const Value.absent(),
    this.uid = const Value.absent(),
    this.title = const Value.absent(),
    this.tileIndex = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TilesTableCompanion.insert({
    this.id = const Value.absent(),
    required String uid,
    required String title,
    required int tileIndex,
    this.createdAt = const Value.absent(),
  })  : uid = Value(uid),
        title = Value(title),
        tileIndex = Value(tileIndex);
  static Insertable<TilesTableData> custom({
    Expression<int>? id,
    Expression<String>? uid,
    Expression<String>? title,
    Expression<int>? tileIndex,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (uid != null) 'uid': uid,
      if (title != null) 'title': title,
      if (tileIndex != null) 'tile_index': tileIndex,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TilesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? uid,
      Value<String>? title,
      Value<int>? tileIndex,
      Value<DateTime>? createdAt}) {
    return TilesTableCompanion(
      id: id ?? this.id,
      uid: uid ?? this.uid,
      title: title ?? this.title,
      tileIndex: tileIndex ?? this.tileIndex,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (uid.present) {
      map['uid'] = Variable<String>(uid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (tileIndex.present) {
      map['tile_index'] = Variable<int>(tileIndex.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TilesTableCompanion(')
          ..write('id: $id, ')
          ..write('uid: $uid, ')
          ..write('title: $title, ')
          ..write('tileIndex: $tileIndex, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TilesTableTable tilesTable = $TilesTableTable(this);
  late final TilesDao tilesDao = TilesDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tilesTable];
}

typedef $$TilesTableTableCreateCompanionBuilder = TilesTableCompanion Function({
  Value<int> id,
  required String uid,
  required String title,
  required int tileIndex,
  Value<DateTime> createdAt,
});
typedef $$TilesTableTableUpdateCompanionBuilder = TilesTableCompanion Function({
  Value<int> id,
  Value<String> uid,
  Value<String> title,
  Value<int> tileIndex,
  Value<DateTime> createdAt,
});

class $$TilesTableTableFilterComposer
    extends Composer<_$AppDatabase, $TilesTableTable> {
  $$TilesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uid => $composableBuilder(
      column: $table.uid, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get tileIndex => $composableBuilder(
      column: $table.tileIndex, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$TilesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TilesTableTable> {
  $$TilesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uid => $composableBuilder(
      column: $table.uid, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get tileIndex => $composableBuilder(
      column: $table.tileIndex, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$TilesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TilesTableTable> {
  $$TilesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get uid =>
      $composableBuilder(column: $table.uid, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get tileIndex =>
      $composableBuilder(column: $table.tileIndex, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TilesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TilesTableTable,
    TilesTableData,
    $$TilesTableTableFilterComposer,
    $$TilesTableTableOrderingComposer,
    $$TilesTableTableAnnotationComposer,
    $$TilesTableTableCreateCompanionBuilder,
    $$TilesTableTableUpdateCompanionBuilder,
    (
      TilesTableData,
      BaseReferences<_$AppDatabase, $TilesTableTable, TilesTableData>
    ),
    TilesTableData,
    PrefetchHooks Function()> {
  $$TilesTableTableTableManager(_$AppDatabase db, $TilesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TilesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TilesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TilesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> uid = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<int> tileIndex = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              TilesTableCompanion(
            id: id,
            uid: uid,
            title: title,
            tileIndex: tileIndex,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String uid,
            required String title,
            required int tileIndex,
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              TilesTableCompanion.insert(
            id: id,
            uid: uid,
            title: title,
            tileIndex: tileIndex,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TilesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TilesTableTable,
    TilesTableData,
    $$TilesTableTableFilterComposer,
    $$TilesTableTableOrderingComposer,
    $$TilesTableTableAnnotationComposer,
    $$TilesTableTableCreateCompanionBuilder,
    $$TilesTableTableUpdateCompanionBuilder,
    (
      TilesTableData,
      BaseReferences<_$AppDatabase, $TilesTableTable, TilesTableData>
    ),
    TilesTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TilesTableTableTableManager get tilesTable =>
      $$TilesTableTableTableManager(_db, _db.tilesTable);
}

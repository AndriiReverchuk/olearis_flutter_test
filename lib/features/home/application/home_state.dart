import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entities/tile_item.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(<TileItem>[]) List<TileItem> tiles,
  }) = _HomeState;

  bool get canRemove => tiles.isNotEmpty;

  int get tilesCount => tiles.length;

  bool get isEmpty => tiles.isEmpty;
}

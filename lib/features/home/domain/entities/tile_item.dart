import 'package:freezed_annotation/freezed_annotation.dart';

part 'tile_item.freezed.dart';

@freezed
abstract class TileItem with _$TileItem {
  const TileItem._();

  const factory TileItem({
    required String id,
    required String title,
    required int index,
  }) = _TileItem;

  factory TileItem.create(int index) => TileItem(
        id: 'tile_$index',
        title: 'Item $index',
        index: index,
      );
}

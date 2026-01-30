// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tile_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TileItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  /// Create a copy of TileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TileItemCopyWith<TileItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileItemCopyWith<$Res> {
  factory $TileItemCopyWith(TileItem value, $Res Function(TileItem) then) =
      _$TileItemCopyWithImpl<$Res, TileItem>;
  @useResult
  $Res call({String id, String title, int index});
}

/// @nodoc
class _$TileItemCopyWithImpl<$Res, $Val extends TileItem>
    implements $TileItemCopyWith<$Res> {
  _$TileItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TileItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TileItemImplCopyWith<$Res>
    implements $TileItemCopyWith<$Res> {
  factory _$$TileItemImplCopyWith(
          _$TileItemImpl value, $Res Function(_$TileItemImpl) then) =
      __$$TileItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, int index});
}

/// @nodoc
class __$$TileItemImplCopyWithImpl<$Res>
    extends _$TileItemCopyWithImpl<$Res, _$TileItemImpl>
    implements _$$TileItemImplCopyWith<$Res> {
  __$$TileItemImplCopyWithImpl(
      _$TileItemImpl _value, $Res Function(_$TileItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TileItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? index = null,
  }) {
    return _then(_$TileItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TileItemImpl extends _TileItem {
  const _$TileItemImpl(
      {required this.id, required this.title, required this.index})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final int index;

  @override
  String toString() {
    return 'TileItem(id: $id, title: $title, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TileItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, index);

  /// Create a copy of TileItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TileItemImplCopyWith<_$TileItemImpl> get copyWith =>
      __$$TileItemImplCopyWithImpl<_$TileItemImpl>(this, _$identity);
}

abstract class _TileItem extends TileItem {
  const factory _TileItem(
      {required final String id,
      required final String title,
      required final int index}) = _$TileItemImpl;
  const _TileItem._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  int get index;

  /// Create a copy of TileItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TileItemImplCopyWith<_$TileItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

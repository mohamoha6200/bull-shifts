// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShiftResponseModel _$ShiftResponseModelFromJson(Map<String, dynamic> json) {
  return _ShiftResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ShiftResponseModel {
  List<Shift> get data => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftResponseModelCopyWith<ShiftResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftResponseModelCopyWith<$Res> {
  factory $ShiftResponseModelCopyWith(
          ShiftResponseModel value, $Res Function(ShiftResponseModel) then) =
      _$ShiftResponseModelCopyWithImpl<$Res, ShiftResponseModel>;
  @useResult
  $Res call({List<Shift> data, Links links, Meta meta});

  $LinksCopyWith<$Res> get links;
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ShiftResponseModelCopyWithImpl<$Res, $Val extends ShiftResponseModel>
    implements $ShiftResponseModelCopyWith<$Res> {
  _$ShiftResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShiftResponseModelCopyWith<$Res>
    implements $ShiftResponseModelCopyWith<$Res> {
  factory _$$_ShiftResponseModelCopyWith(_$_ShiftResponseModel value,
          $Res Function(_$_ShiftResponseModel) then) =
      __$$_ShiftResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Shift> data, Links links, Meta meta});

  @override
  $LinksCopyWith<$Res> get links;
  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ShiftResponseModelCopyWithImpl<$Res>
    extends _$ShiftResponseModelCopyWithImpl<$Res, _$_ShiftResponseModel>
    implements _$$_ShiftResponseModelCopyWith<$Res> {
  __$$_ShiftResponseModelCopyWithImpl(
      _$_ShiftResponseModel _value, $Res Function(_$_ShiftResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? links = null,
    Object? meta = null,
  }) {
    return _then(_$_ShiftResponseModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShiftResponseModel implements _ShiftResponseModel {
  const _$_ShiftResponseModel(
      {required final List<Shift> data,
      required this.links,
      required this.meta})
      : _data = data;

  factory _$_ShiftResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftResponseModelFromJson(json);

  final List<Shift> _data;
  @override
  List<Shift> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Links links;
  @override
  final Meta meta;

  @override
  String toString() {
    return 'ShiftResponseModel(data: $data, links: $links, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftResponseModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), links, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftResponseModelCopyWith<_$_ShiftResponseModel> get copyWith =>
      __$$_ShiftResponseModelCopyWithImpl<_$_ShiftResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftResponseModelToJson(
      this,
    );
  }
}

abstract class _ShiftResponseModel implements ShiftResponseModel {
  const factory _ShiftResponseModel(
      {required final List<Shift> data,
      required final Links links,
      required final Meta meta}) = _$_ShiftResponseModel;

  factory _ShiftResponseModel.fromJson(Map<String, dynamic> json) =
      _$_ShiftResponseModel.fromJson;

  @override
  List<Shift> get data;
  @override
  Links get links;
  @override
  Meta get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftResponseModelCopyWith<_$_ShiftResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

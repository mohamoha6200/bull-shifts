// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recurring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Recurring _$RecurringFromJson(Map<String, dynamic> json) {
  return _Recurring.fromJson(json);
}

/// @nodoc
mixin _$Recurring {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  String get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  String get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecurringCopyWith<Recurring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecurringCopyWith<$Res> {
  factory $RecurringCopyWith(Recurring value, $Res Function(Recurring) then) =
      _$RecurringCopyWithImpl<$Res, Recurring>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_at') String startAt,
      @JsonKey(name: 'end_at') String endAt,
      @JsonKey(name: 'is_available') bool isAvailable});
}

/// @nodoc
class _$RecurringCopyWithImpl<$Res, $Val extends Recurring>
    implements $RecurringCopyWith<$Res> {
  _$RecurringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecurringCopyWith<$Res> implements $RecurringCopyWith<$Res> {
  factory _$$_RecurringCopyWith(
          _$_Recurring value, $Res Function(_$_Recurring) then) =
      __$$_RecurringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'start_at') String startAt,
      @JsonKey(name: 'end_at') String endAt,
      @JsonKey(name: 'is_available') bool isAvailable});
}

/// @nodoc
class __$$_RecurringCopyWithImpl<$Res>
    extends _$RecurringCopyWithImpl<$Res, _$_Recurring>
    implements _$$_RecurringCopyWith<$Res> {
  __$$_RecurringCopyWithImpl(
      _$_Recurring _value, $Res Function(_$_Recurring) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? isAvailable = null,
  }) {
    return _then(_$_Recurring(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as String,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recurring implements _Recurring {
  const _$_Recurring(
      {required this.id,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'end_at') required this.endAt,
      @JsonKey(name: 'is_available') required this.isAvailable});

  factory _$_Recurring.fromJson(Map<String, dynamic> json) =>
      _$$_RecurringFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'start_at')
  final String startAt;
  @override
  @JsonKey(name: 'end_at')
  final String endAt;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @override
  String toString() {
    return 'Recurring(id: $id, startAt: $startAt, endAt: $endAt, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Recurring &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, startAt, endAt, isAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecurringCopyWith<_$_Recurring> get copyWith =>
      __$$_RecurringCopyWithImpl<_$_Recurring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecurringToJson(
      this,
    );
  }
}

abstract class _Recurring implements Recurring {
  const factory _Recurring(
          {required final int id,
          @JsonKey(name: 'start_at') required final String startAt,
          @JsonKey(name: 'end_at') required final String endAt,
          @JsonKey(name: 'is_available') required final bool isAvailable}) =
      _$_Recurring;

  factory _Recurring.fromJson(Map<String, dynamic> json) =
      _$_Recurring.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'start_at')
  String get startAt;
  @override
  @JsonKey(name: 'end_at')
  String get endAt;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_RecurringCopyWith<_$_Recurring> get copyWith =>
      throw _privateConstructorUsedError;
}

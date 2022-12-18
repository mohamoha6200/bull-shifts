// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Shift _$ShiftFromJson(Map<String, dynamic> json) {
  return _Shift.fromJson(json);
}

/// @nodoc
mixin _$Shift {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime get endAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_name')
  String get postName => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_id')
  int get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_soon')
  bool get startSoon => throw _privateConstructorUsedError;
  Recurring? get recurring => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'buy_price')
  String get buyPrice => throw _privateConstructorUsedError;
  num get bonus => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShiftCopyWith<Shift> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftCopyWith<$Res> {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) then) =
      _$ShiftCopyWithImpl<$Res, Shift>;
  @useResult
  $Res call(
      {int id,
      String status,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'end_at') DateTime endAt,
      @JsonKey(name: 'post_name') String postName,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'start_soon') bool startSoon,
      Recurring? recurring,
      String company,
      @JsonKey(name: 'buy_price') String buyPrice,
      num bonus,
      double latitude,
      double longitude});

  $RecurringCopyWith<$Res>? get recurring;
}

/// @nodoc
class _$ShiftCopyWithImpl<$Res, $Val extends Shift>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? postName = null,
    Object? postId = null,
    Object? startSoon = null,
    Object? recurring = freezed,
    Object? company = null,
    Object? buyPrice = null,
    Object? bonus = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      startSoon: null == startSoon
          ? _value.startSoon
          : startSoon // ignore: cast_nullable_to_non_nullable
              as bool,
      recurring: freezed == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as Recurring?,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as num,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecurringCopyWith<$Res>? get recurring {
    if (_value.recurring == null) {
      return null;
    }

    return $RecurringCopyWith<$Res>(_value.recurring!, (value) {
      return _then(_value.copyWith(recurring: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$$_ShiftCopyWith(_$_Shift value, $Res Function(_$_Shift) then) =
      __$$_ShiftCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String status,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'end_at') DateTime endAt,
      @JsonKey(name: 'post_name') String postName,
      @JsonKey(name: 'post_id') int postId,
      @JsonKey(name: 'start_soon') bool startSoon,
      Recurring? recurring,
      String company,
      @JsonKey(name: 'buy_price') String buyPrice,
      num bonus,
      double latitude,
      double longitude});

  @override
  $RecurringCopyWith<$Res>? get recurring;
}

/// @nodoc
class __$$_ShiftCopyWithImpl<$Res> extends _$ShiftCopyWithImpl<$Res, _$_Shift>
    implements _$$_ShiftCopyWith<$Res> {
  __$$_ShiftCopyWithImpl(_$_Shift _value, $Res Function(_$_Shift) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? postName = null,
    Object? postId = null,
    Object? startSoon = null,
    Object? recurring = freezed,
    Object? company = null,
    Object? buyPrice = null,
    Object? bonus = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$_Shift(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      postName: null == postName
          ? _value.postName
          : postName // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      startSoon: null == startSoon
          ? _value.startSoon
          : startSoon // ignore: cast_nullable_to_non_nullable
              as bool,
      recurring: freezed == recurring
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as Recurring?,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as String,
      bonus: null == bonus
          ? _value.bonus
          : bonus // ignore: cast_nullable_to_non_nullable
              as num,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Shift implements _Shift {
  const _$_Shift(
      {required this.id,
      required this.status,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'end_at') required this.endAt,
      @JsonKey(name: 'post_name') required this.postName,
      @JsonKey(name: 'post_id') required this.postId,
      @JsonKey(name: 'start_soon') required this.startSoon,
      this.recurring,
      required this.company,
      @JsonKey(name: 'buy_price') required this.buyPrice,
      required this.bonus,
      required this.latitude,
      required this.longitude});

  factory _$_Shift.fromJson(Map<String, dynamic> json) =>
      _$$_ShiftFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  @JsonKey(name: 'start_at')
  final DateTime startAt;
  @override
  @JsonKey(name: 'end_at')
  final DateTime endAt;
  @override
  @JsonKey(name: 'post_name')
  final String postName;
  @override
  @JsonKey(name: 'post_id')
  final int postId;
  @override
  @JsonKey(name: 'start_soon')
  final bool startSoon;
  @override
  final Recurring? recurring;
  @override
  final String company;
  @override
  @JsonKey(name: 'buy_price')
  final String buyPrice;
  @override
  final num bonus;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Shift(id: $id, status: $status, startAt: $startAt, endAt: $endAt, postName: $postName, postId: $postId, startSoon: $startSoon, recurring: $recurring, company: $company, buyPrice: $buyPrice, bonus: $bonus, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Shift &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.postName, postName) ||
                other.postName == postName) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.startSoon, startSoon) ||
                other.startSoon == startSoon) &&
            (identical(other.recurring, recurring) ||
                other.recurring == recurring) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.bonus, bonus) || other.bonus == bonus) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      startAt,
      endAt,
      postName,
      postId,
      startSoon,
      recurring,
      company,
      buyPrice,
      bonus,
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftCopyWith<_$_Shift> get copyWith =>
      __$$_ShiftCopyWithImpl<_$_Shift>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShiftToJson(
      this,
    );
  }
}

abstract class _Shift implements Shift {
  const factory _Shift(
      {required final int id,
      required final String status,
      @JsonKey(name: 'start_at') required final DateTime startAt,
      @JsonKey(name: 'end_at') required final DateTime endAt,
      @JsonKey(name: 'post_name') required final String postName,
      @JsonKey(name: 'post_id') required final int postId,
      @JsonKey(name: 'start_soon') required final bool startSoon,
      final Recurring? recurring,
      required final String company,
      @JsonKey(name: 'buy_price') required final String buyPrice,
      required final num bonus,
      required final double latitude,
      required final double longitude}) = _$_Shift;

  factory _Shift.fromJson(Map<String, dynamic> json) = _$_Shift.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  @JsonKey(name: 'start_at')
  DateTime get startAt;
  @override
  @JsonKey(name: 'end_at')
  DateTime get endAt;
  @override
  @JsonKey(name: 'post_name')
  String get postName;
  @override
  @JsonKey(name: 'post_id')
  int get postId;
  @override
  @JsonKey(name: 'start_soon')
  bool get startSoon;
  @override
  Recurring? get recurring;
  @override
  String get company;
  @override
  @JsonKey(name: 'buy_price')
  String get buyPrice;
  @override
  num get bonus;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftCopyWith<_$_Shift> get copyWith =>
      throw _privateConstructorUsedError;
}

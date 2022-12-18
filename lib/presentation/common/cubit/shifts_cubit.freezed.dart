// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shifts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShiftsState {
  Option<Either<String, ShiftResponseModel>> get result =>
      throw _privateConstructorUsedError;
  List<Shift> get lastMinuteShifts => throw _privateConstructorUsedError;
  List<Shift> get upcomingShifts => throw _privateConstructorUsedError;
  Shift? get shiftOnFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShiftsStateCopyWith<ShiftsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShiftsStateCopyWith<$Res> {
  factory $ShiftsStateCopyWith(
          ShiftsState value, $Res Function(ShiftsState) then) =
      _$ShiftsStateCopyWithImpl<$Res, ShiftsState>;
  @useResult
  $Res call(
      {Option<Either<String, ShiftResponseModel>> result,
      List<Shift> lastMinuteShifts,
      List<Shift> upcomingShifts,
      Shift? shiftOnFocus});

  $ShiftCopyWith<$Res>? get shiftOnFocus;
}

/// @nodoc
class _$ShiftsStateCopyWithImpl<$Res, $Val extends ShiftsState>
    implements $ShiftsStateCopyWith<$Res> {
  _$ShiftsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? lastMinuteShifts = null,
    Object? upcomingShifts = null,
    Object? shiftOnFocus = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, ShiftResponseModel>>,
      lastMinuteShifts: null == lastMinuteShifts
          ? _value.lastMinuteShifts
          : lastMinuteShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      upcomingShifts: null == upcomingShifts
          ? _value.upcomingShifts
          : upcomingShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      shiftOnFocus: freezed == shiftOnFocus
          ? _value.shiftOnFocus
          : shiftOnFocus // ignore: cast_nullable_to_non_nullable
              as Shift?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShiftCopyWith<$Res>? get shiftOnFocus {
    if (_value.shiftOnFocus == null) {
      return null;
    }

    return $ShiftCopyWith<$Res>(_value.shiftOnFocus!, (value) {
      return _then(_value.copyWith(shiftOnFocus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShiftsStateCopyWith<$Res>
    implements $ShiftsStateCopyWith<$Res> {
  factory _$$_ShiftsStateCopyWith(
          _$_ShiftsState value, $Res Function(_$_ShiftsState) then) =
      __$$_ShiftsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<String, ShiftResponseModel>> result,
      List<Shift> lastMinuteShifts,
      List<Shift> upcomingShifts,
      Shift? shiftOnFocus});

  @override
  $ShiftCopyWith<$Res>? get shiftOnFocus;
}

/// @nodoc
class __$$_ShiftsStateCopyWithImpl<$Res>
    extends _$ShiftsStateCopyWithImpl<$Res, _$_ShiftsState>
    implements _$$_ShiftsStateCopyWith<$Res> {
  __$$_ShiftsStateCopyWithImpl(
      _$_ShiftsState _value, $Res Function(_$_ShiftsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? lastMinuteShifts = null,
    Object? upcomingShifts = null,
    Object? shiftOnFocus = freezed,
  }) {
    return _then(_$_ShiftsState(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, ShiftResponseModel>>,
      lastMinuteShifts: null == lastMinuteShifts
          ? _value._lastMinuteShifts
          : lastMinuteShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      upcomingShifts: null == upcomingShifts
          ? _value._upcomingShifts
          : upcomingShifts // ignore: cast_nullable_to_non_nullable
              as List<Shift>,
      shiftOnFocus: freezed == shiftOnFocus
          ? _value.shiftOnFocus
          : shiftOnFocus // ignore: cast_nullable_to_non_nullable
              as Shift?,
    ));
  }
}

/// @nodoc

class _$_ShiftsState implements _ShiftsState {
  const _$_ShiftsState(
      {required this.result,
      required final List<Shift> lastMinuteShifts,
      required final List<Shift> upcomingShifts,
      this.shiftOnFocus})
      : _lastMinuteShifts = lastMinuteShifts,
        _upcomingShifts = upcomingShifts;

  @override
  final Option<Either<String, ShiftResponseModel>> result;
  final List<Shift> _lastMinuteShifts;
  @override
  List<Shift> get lastMinuteShifts {
    if (_lastMinuteShifts is EqualUnmodifiableListView)
      return _lastMinuteShifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lastMinuteShifts);
  }

  final List<Shift> _upcomingShifts;
  @override
  List<Shift> get upcomingShifts {
    if (_upcomingShifts is EqualUnmodifiableListView) return _upcomingShifts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingShifts);
  }

  @override
  final Shift? shiftOnFocus;

  @override
  String toString() {
    return 'ShiftsState(result: $result, lastMinuteShifts: $lastMinuteShifts, upcomingShifts: $upcomingShifts, shiftOnFocus: $shiftOnFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShiftsState &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other._lastMinuteShifts, _lastMinuteShifts) &&
            const DeepCollectionEquality()
                .equals(other._upcomingShifts, _upcomingShifts) &&
            (identical(other.shiftOnFocus, shiftOnFocus) ||
                other.shiftOnFocus == shiftOnFocus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      const DeepCollectionEquality().hash(_lastMinuteShifts),
      const DeepCollectionEquality().hash(_upcomingShifts),
      shiftOnFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShiftsStateCopyWith<_$_ShiftsState> get copyWith =>
      __$$_ShiftsStateCopyWithImpl<_$_ShiftsState>(this, _$identity);
}

abstract class _ShiftsState implements ShiftsState {
  const factory _ShiftsState(
      {required final Option<Either<String, ShiftResponseModel>> result,
      required final List<Shift> lastMinuteShifts,
      required final List<Shift> upcomingShifts,
      final Shift? shiftOnFocus}) = _$_ShiftsState;

  @override
  Option<Either<String, ShiftResponseModel>> get result;
  @override
  List<Shift> get lastMinuteShifts;
  @override
  List<Shift> get upcomingShifts;
  @override
  Shift? get shiftOnFocus;
  @override
  @JsonKey(ignore: true)
  _$$_ShiftsStateCopyWith<_$_ShiftsState> get copyWith =>
      throw _privateConstructorUsedError;
}

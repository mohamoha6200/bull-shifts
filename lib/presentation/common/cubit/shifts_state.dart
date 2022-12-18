part of 'shifts_cubit.dart';

@freezed
class ShiftsState with _$ShiftsState {
  const factory ShiftsState({
    required Option<Either<String, ShiftResponseModel>> result,
    required List<Shift> lastMinuteShifts,
    required List<Shift> upcomingShifts,
    Shift? shiftOnFocus,
  }) = _ShiftsState;
  factory ShiftsState.initial() => ShiftsState(
        result: none(),
        lastMinuteShifts: [],
        upcomingShifts: [],
      );
}

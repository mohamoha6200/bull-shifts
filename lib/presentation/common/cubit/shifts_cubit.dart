import 'package:bloc/bloc.dart';
import 'package:bull_shifts/core/errors/failure.dart';
import 'package:bull_shifts/infrastructure/models/shift/responses/shift_response_model.dart';
import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:bull_shifts/infrastructure/usecases/shift/read_shifts.dart';
import 'package:bull_shifts/infrastructure/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shifts_state.dart';
part 'shifts_cubit.freezed.dart';

@injectable
class ShiftsCubit extends Cubit<ShiftsState> {
  final GetLocalShifts getLocalShifts;
  ShiftsCubit(this.getLocalShifts) : super(ShiftsState.initial());

  readShiftsFile() async {
    final resultEither = await getLocalShifts(NoParams());

    Either<String, ShiftResponseModel>? errOrResult =
        resultEither.fold((Failure l) => Left(l.message), (r) => Right(r));

    List<Shift> lastMinuteShifts = [];
    List<Shift> upcomingShifts = [];

    if (errOrResult!.isRight()) {
      errOrResult.fold((l) => null, (r) {
        lastMinuteShifts
            .addAll(r.data.where((shift) => shift.startSoon).toList());
        upcomingShifts
            .addAll(r.data.where((shift) => !shift.startSoon).toList());
      });
    }
    emit(state.copyWith(
      result: optionOf(errOrResult),
      lastMinuteShifts: lastMinuteShifts,
      upcomingShifts: upcomingShifts,
    ));
  }

  shiftCardPressed(Shift shift) {
    emit(state.copyWith(shiftOnFocus: shift));
  }
}

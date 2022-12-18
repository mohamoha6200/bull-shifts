import 'package:bull_shifts/core/errors/failure.dart';
import 'package:bull_shifts/infrastructure/models/shift/responses/shift_response_model.dart';
import 'package:bull_shifts/infrastructure/repositories/shift_repository.dart';
import 'package:bull_shifts/infrastructure/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetLocalShifts implements Usecase<ShiftResponseModel, NoParams> {
  final ShiftRepository repository;

  GetLocalShifts(this.repository);

  @override
  Future<Either<Failure, ShiftResponseModel>> call(NoParams params) async {
    return await repository.getShifts();
  }
}

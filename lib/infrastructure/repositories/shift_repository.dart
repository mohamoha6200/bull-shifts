import 'package:bull_shifts/core/errors/failure.dart';
import 'package:bull_shifts/infrastructure/datasources/local_datasources/shift_local_data_source.dart';
import 'package:bull_shifts/infrastructure/models/shift/responses/shift_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class ShiftRepository {
  /// [ShiftResponseModel]
  ///
  /// Get Shift List
  Future<Either<Failure, ShiftResponseModel>> getShifts();
}

@Singleton(as: ShiftRepository)
class ShiftRepositoryImpl implements ShiftRepository {
  final ShiftLocalDataSource shiftDataSource;

  const ShiftRepositoryImpl(this.shiftDataSource);

  /// [Shifts]
  @override
  Future<Either<Failure, ShiftResponseModel>> getShifts() {
    return shiftDataSource.getShifts();
  }
}

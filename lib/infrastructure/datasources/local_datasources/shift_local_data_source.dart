import 'dart:convert';

import 'package:bull_shifts/core/constants/assets_constants.dart';
import 'package:bull_shifts/core/errors/failure.dart';
import 'package:bull_shifts/infrastructure/models/shift/responses/shift_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

abstract class ShiftLocalDataSource {
  /// Returns ShiftResponseModel containing the list of shifts
  ///
  /// Throws a [ReadAssetFailure] if it fails to read json
  Future<Either<Failure, ShiftResponseModel>> getShifts();
}

@Singleton(as: ShiftLocalDataSource)
class ShiftLocalDataSourceImpl implements ShiftLocalDataSource {
  ShiftLocalDataSourceImpl();

  @override
  Future<Either<Failure, ShiftResponseModel>> getShifts() async {
    try {
      final String response =
          await rootBundle.loadString(AssetsConstants.shiftsFile);
      final data = await json.decode(response);

      return Right(ShiftResponseModel.fromJson(data));
    } catch (e) {
      return const Left(Failure.readAssetFailure());
    }
  }
}

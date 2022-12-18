import 'package:bull_shifts/infrastructure/models/common/pagination/links.dart';
import 'package:bull_shifts/infrastructure/models/common/pagination/meta.dart';
import 'package:bull_shifts/infrastructure/models/shift/shift.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_response_model.freezed.dart';
part 'shift_response_model.g.dart';

@freezed
class ShiftResponseModel with _$ShiftResponseModel {
  const factory ShiftResponseModel({
    required List<Shift> data,
    required Links links,
    required Meta meta,
  }) = _ShiftResponseModel;
  factory ShiftResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftResponseModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recurring.freezed.dart';
part 'recurring.g.dart';

@freezed
class Recurring with _$Recurring {
  const factory Recurring({
    required int id,
    @JsonKey(name: 'start_at') required String startAt,
    @JsonKey(name: 'end_at') required String endAt,
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _Recurring;
  factory Recurring.fromJson(Map<String, dynamic> json) =>
      _$RecurringFromJson(json);
}

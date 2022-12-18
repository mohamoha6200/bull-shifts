import 'package:bull_shifts/infrastructure/models/shift/recurring.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shift.freezed.dart';
part 'shift.g.dart';

@freezed
class Shift with _$Shift {
  const factory Shift({
    required int id,
    required String status,
    @JsonKey(name: 'start_at') required DateTime startAt,
    @JsonKey(name: 'end_at') required DateTime endAt,
    @JsonKey(name: 'post_name') required String postName,
    @JsonKey(name: 'post_id') required int postId,
    @JsonKey(name: 'start_soon') required bool startSoon,
    Recurring? recurring,
    required String company,
    @JsonKey(name: 'buy_price') required String buyPrice,
    required num bonus,
    required double latitude,
    required double longitude,
  }) = _Shift;
  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}

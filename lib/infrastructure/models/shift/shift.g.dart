// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Shift _$$_ShiftFromJson(Map<String, dynamic> json) => _$_Shift(
      id: json['id'] as int,
      status: json['status'] as String,
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
      postName: json['post_name'] as String,
      postId: json['post_id'] as int,
      startSoon: json['start_soon'] as bool,
      recurring: json['recurring'] == null
          ? null
          : Recurring.fromJson(json['recurring'] as Map<String, dynamic>),
      company: json['company'] as String,
      buyPrice: json['buy_price'] as String,
      bonus: json['bonus'] as num,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ShiftToJson(_$_Shift instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
      'post_name': instance.postName,
      'post_id': instance.postId,
      'start_soon': instance.startSoon,
      'recurring': instance.recurring,
      'company': instance.company,
      'buy_price': instance.buyPrice,
      'bonus': instance.bonus,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Recurring _$$_RecurringFromJson(Map<String, dynamic> json) => _$_Recurring(
      id: json['id'] as int,
      startAt: json['start_at'] as String,
      endAt: json['end_at'] as String,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$_RecurringToJson(_$_Recurring instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'is_available': instance.isAvailable,
    };

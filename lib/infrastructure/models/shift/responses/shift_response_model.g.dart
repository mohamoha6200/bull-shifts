// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShiftResponseModel _$$_ShiftResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShiftResponseModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Shift.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ShiftResponseModelToJson(
        _$_ShiftResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'links': instance.links,
      'meta': instance.meta,
    };

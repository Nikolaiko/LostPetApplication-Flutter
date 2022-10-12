// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_position_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoPositionResult _$GeoPositionResultFromJson(Map<String, dynamic> json) =>
    GeoPositionResult(
      (json['lat'] as num).toDouble(),
      (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$GeoPositionResultToJson(GeoPositionResult instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementsResult _$AnnouncementsResultFromJson(Map<String, dynamic> json) =>
    AnnouncementsResult(
      json['id'] as int,
      $enumDecode(_$PetTypeResultEnumMap, json['petType']),
      json['imageUrl'] as String,
      json['title'] as String,
      json['description'] as String,
      GeoPositionResult.fromJson(json['geoPosition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnnouncementsResultToJson(
        AnnouncementsResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'petType': _$PetTypeResultEnumMap[instance.petType]!,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'description': instance.description,
      'geoPosition': instance.geoPosition,
    };

const _$PetTypeResultEnumMap = {
  PetTypeResult.catType: 'cat',
  PetTypeResult.dogType: 'dog',
  PetTypeResult.otherType: 'other',
};

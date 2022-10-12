
import 'package:json_annotation/json_annotation.dart';
import 'package:lost_pets_app/model/network_data/geo_position_result.dart';
import 'package:lost_pets_app/model/network_data/pet_type_result.dart';

part 'announcements_result.g.dart';

@JsonSerializable()
class AnnouncementsResult {
  final int id;
  final PetTypeResult petType;
  final String imageUrl;
  final String title;
  final String description;
  final GeoPositionResult geoPosition;

  AnnouncementsResult(
    this.id,
    this.petType,
    this.imageUrl,
    this.title,
    this.description,
    this.geoPosition
  );

  factory AnnouncementsResult.fromJson(Map<String, dynamic> json) => _$AnnouncementsResultFromJson(json);

  Map<String, dynamic> toJson() => _$AnnouncementsResultToJson(this);
}
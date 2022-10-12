
import 'package:json_annotation/json_annotation.dart';

part 'geo_position_result.g.dart';

@JsonSerializable()
class GeoPositionResult {
  final double lat;
  final double lng;

  GeoPositionResult(this.lat, this.lng);

  factory GeoPositionResult.fromJson(Map<String, dynamic> json) => _$GeoPositionResultFromJson(json);

  Map<String, dynamic> toJson() => _$GeoPositionResultToJson(this);
}
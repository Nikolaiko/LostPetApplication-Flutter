//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GeoPosition {
  /// Returns a new [GeoPosition] instance.
  GeoPosition({
    @required this.lat,
    @required this.lng,
  });

  double lat;

  double lng;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GeoPosition &&
     other.lat == lat &&
     other.lng == lng;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (lat == null ? 0 : lat.hashCode) +
    (lng == null ? 0 : lng.hashCode);

  @override
  String toString() => 'GeoPosition[lat=$lat, lng=$lng]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lat'] = lat;
      json[r'lng'] = lng;
    return json;
  }

  /// Returns a new [GeoPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GeoPosition fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GeoPosition(
        lat: mapValueOfType<double>(json, r'lat'),
        lng: mapValueOfType<double>(json, r'lng'),
      );
    }
    return null;
  }

  static List<GeoPosition> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GeoPosition.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GeoPosition>[];

  static Map<String, GeoPosition> mapFromJson(dynamic json) {
    final map = <String, GeoPosition>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GeoPosition.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GeoPosition-objects as value to a dart map
  static Map<String, List<GeoPosition>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GeoPosition>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GeoPosition.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


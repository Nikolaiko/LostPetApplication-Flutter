//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LossAnnouncement {
  /// Returns a new [LossAnnouncement] instance.
  LossAnnouncement({
    @required this.id,
    @required this.petType,
    @required this.imageUrl,
    @required this.title,
    @required this.description,
    @required this.geoPosition,
  });

  String id;

  PetTypes petType;

  String imageUrl;

  String title;

  String description;

  GeoPosition geoPosition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LossAnnouncement &&
     other.id == id &&
     other.petType == petType &&
     other.imageUrl == imageUrl &&
     other.title == title &&
     other.description == description &&
     other.geoPosition == geoPosition;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (petType == null ? 0 : petType.hashCode) +
    (imageUrl == null ? 0 : imageUrl.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (geoPosition == null ? 0 : geoPosition.hashCode);

  @override
  String toString() => 'LossAnnouncement[id=$id, petType=$petType, imageUrl=$imageUrl, title=$title, description=$description, geoPosition=$geoPosition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'petType'] = petType;
      json[r'imageUrl'] = imageUrl;
      json[r'title'] = title;
      json[r'description'] = description;
      json[r'geoPosition'] = geoPosition;
    return json;
  }

  /// Returns a new [LossAnnouncement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LossAnnouncement fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return LossAnnouncement(
        id: mapValueOfType<String>(json, r'id'),
        petType: PetTypes.fromJson(json[r'petType']),
        imageUrl: mapValueOfType<String>(json, r'imageUrl'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        geoPosition: GeoPosition.fromJson(json[r'geoPosition']),
      );
    }
    return null;
  }

  static List<LossAnnouncement> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(LossAnnouncement.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <LossAnnouncement>[];

  static Map<String, LossAnnouncement> mapFromJson(dynamic json) {
    final map = <String, LossAnnouncement>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = LossAnnouncement.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LossAnnouncement-objects as value to a dart map
  static Map<String, List<LossAnnouncement>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<LossAnnouncement>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = LossAnnouncement.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


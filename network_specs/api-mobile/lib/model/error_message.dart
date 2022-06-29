//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorMessage {
  /// Returns a new [ErrorMessage] instance.
  ErrorMessage({
    @required this.message,
  });

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorMessage &&
     other.message == message;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (message == null ? 0 : message.hashCode);

  @override
  String toString() => 'ErrorMessage[message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = message;
    return json;
  }

  /// Returns a new [ErrorMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorMessage fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ErrorMessage(
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<ErrorMessage> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ErrorMessage.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ErrorMessage>[];

  static Map<String, ErrorMessage> mapFromJson(dynamic json) {
    final map = <String, ErrorMessage>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ErrorMessage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ErrorMessage-objects as value to a dart map
  static Map<String, List<ErrorMessage>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ErrorMessage>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ErrorMessage.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


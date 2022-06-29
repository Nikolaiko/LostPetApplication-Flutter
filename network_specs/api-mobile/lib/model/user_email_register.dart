//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserEmailRegister {
  /// Returns a new [UserEmailRegister] instance.
  UserEmailRegister({
    @required this.email,
    @required this.password,
    @required this.userName,
  });

  String email;

  String password;

  String userName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserEmailRegister &&
     other.email == email &&
     other.password == password &&
     other.userName == userName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (userName == null ? 0 : userName.hashCode);

  @override
  String toString() => 'UserEmailRegister[email=$email, password=$password, userName=$userName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
      json[r'password'] = password;
      json[r'userName'] = userName;
    return json;
  }

  /// Returns a new [UserEmailRegister] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserEmailRegister fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UserEmailRegister(
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        userName: mapValueOfType<String>(json, r'userName'),
      );
    }
    return null;
  }

  static List<UserEmailRegister> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserEmailRegister.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserEmailRegister>[];

  static Map<String, UserEmailRegister> mapFromJson(dynamic json) {
    final map = <String, UserEmailRegister>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserEmailRegister.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserEmailRegister-objects as value to a dart map
  static Map<String, List<UserEmailRegister>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserEmailRegister>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserEmailRegister.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


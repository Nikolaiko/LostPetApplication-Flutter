//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PetTypes {
  /// Instantiate a new enum with the provided [value].
  const PetTypes._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const dog = PetTypes._(r'dog');
  static const cat = PetTypes._(r'cat');
  static const other = PetTypes._(r'other');

  /// List of all possible values in this [enum][PetTypes].
  static const values = <PetTypes>[
    dog,
    cat,
    other,
  ];

  static PetTypes fromJson(dynamic value) =>
    PetTypesTypeTransformer().decode(value);

  static List<PetTypes> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PetTypes.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PetTypes>[];
}

/// Transformation class that can [encode] an instance of [PetTypes] to String,
/// and [decode] dynamic data back to [PetTypes].
class PetTypesTypeTransformer {
  factory PetTypesTypeTransformer() => _instance ??= const PetTypesTypeTransformer._();

  const PetTypesTypeTransformer._();

  String encode(PetTypes data) => data.value;

  /// Decodes a [dynamic value][data] to a PetTypes.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PetTypes decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'dog': return PetTypes.dog;
        case r'cat': return PetTypes.cat;
        case r'other': return PetTypes.other;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PetTypesTypeTransformer] instance.
  static PetTypesTypeTransformer _instance;
}


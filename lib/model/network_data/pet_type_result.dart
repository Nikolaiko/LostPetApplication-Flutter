
import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum PetTypeResult {
  @JsonValue("cat")
  catType, 
  @JsonValue("dog")
  dogType, 
  @JsonValue("other")
  otherType
}
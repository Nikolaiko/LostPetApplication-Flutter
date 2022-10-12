
import 'package:json_annotation/json_annotation.dart';

part 'registration_data.g.dart';

@JsonSerializable()
class RegistrationData {
  final String email;
  final String password;
  final String userName;

  RegistrationData(this.email, this.password, this.userName);

  factory RegistrationData.fromJson(Map<String, dynamic> json) => _$RegistrationDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationDataToJson(this);
}
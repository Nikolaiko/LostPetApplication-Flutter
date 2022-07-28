import 'package:json_annotation/json_annotation.dart';

part 'login_parameters.g.dart';

@JsonSerializable()
class LoginParameters {

  @JsonKey(name: "email")
  final String login;

  final String password;

  LoginParameters(this.login, this.password);

  factory LoginParameters.fromJson(Map<String, dynamic> json) => _$LoginParametersFromJson(json);
  Map<String, dynamic> toJson() => _$LoginParametersToJson(this);
}
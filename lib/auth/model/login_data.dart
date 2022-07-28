import 'package:json_annotation/json_annotation.dart';

part 'login_data.g.dart';


@JsonSerializable()
class LoginData {

  @JsonKey(name: "email")
  final String login;
  final String password;

  LoginData(this.login, this.password);

  factory LoginData.fromJson(Map<String, dynamic> json) => _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
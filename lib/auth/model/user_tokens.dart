import 'package:json_annotation/json_annotation.dart';

part 'user_tokens.g.dart';

@JsonSerializable()
class UserTokens {
  final String accessToken;
  final String refreshToken;

  UserTokens(this.accessToken, this.refreshToken);

  factory UserTokens.fromJson(Map<String, dynamic> json) => _$UserTokensFromJson(json);
}
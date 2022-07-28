// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    LoginParameters(
      json['email'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$LoginParametersToJson(LoginParameters instance) =>
    <String, dynamic>{
      'email': instance.login,
      'password': instance.password,
    };

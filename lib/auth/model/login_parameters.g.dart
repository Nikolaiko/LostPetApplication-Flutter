// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginParameters _$LoginParametersFromJson(Map<String, dynamic> json) =>
    LoginParameters(
      json['login'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$LoginParametersToJson(LoginParameters instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };

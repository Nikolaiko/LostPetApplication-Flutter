// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationData _$RegistrationDataFromJson(Map<String, dynamic> json) =>
    RegistrationData(
      json['email'] as String,
      json['password'] as String,
      json['userName'] as String,
    );

Map<String, dynamic> _$RegistrationDataToJson(RegistrationData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'userName': instance.userName,
    };

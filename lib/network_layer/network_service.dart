import 'dart:async';

import 'package:lost_pets_app/model/auth/login_data.dart';
import 'package:lost_pets_app/model/auth/registration_data.dart';
import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/model/network_data/user_tokens.dart';

abstract class NetworkService {
  Future<void> healthCheck();
  Future<RequestResult<UserTokens>> login(LoginData data);
  Future<RequestResult<UserTokens>> register(RegistrationData data);
  Future<RequestResult<List<AnnouncementsResult>>> getAnnouncements();
}
import 'dart:async';

import 'package:lost_pets_app/auth/model/login_data.dart';
import 'package:lost_pets_app/auth/model/request_result.dart';
import 'package:lost_pets_app/auth/model/user_tokens.dart';

abstract class NetworkService {
  Future<void> healthCheck();
  Future<RequestResult<UserTokens>> login(LoginData data);
}
import 'dart:async';

import 'package:lost_pets_app/auth/model/login_parameters.dart';

abstract class NetworkService {
  Future<void> healthCheck();
  Future<void> login(LoginParameters parameters);
}
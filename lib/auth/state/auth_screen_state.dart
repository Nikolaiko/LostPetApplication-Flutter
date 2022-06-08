import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/model/auth_screen_type.dart';

class AuthScreenState extends ChangeNotifier {
  AuthScreenType _screenType = AuthScreenType.login;
  AuthScreenType get screenType => _screenType;

  void toggleScreenType() {
    _screenType = _screenType == AuthScreenType.login 
      ? AuthScreenType.register
      : AuthScreenType.login;
    notifyListeners();
  }
}
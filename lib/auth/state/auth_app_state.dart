import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';

class AuthAppState extends ChangeNotifier {
  final LocalStorage _localStorage;

  AuthAppState(this._localStorage);

  bool get needToAuthorizeUser => 
    _localStorage.getTokens() != null || _localStorage.isLoginSkipped();

  void updateState() {
    notifyListeners();
  }
}
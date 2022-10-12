import 'package:flutter/material.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';

class AppState extends ChangeNotifier {
  final LocalStorage _localStorage;

  bool get shouldShowAuthScreen => isLoggedIn() || _localStorage.isLoginSkipped();

  AppState(this._localStorage);

  bool isLoggedIn() => _localStorage.getTokens() != null;
}
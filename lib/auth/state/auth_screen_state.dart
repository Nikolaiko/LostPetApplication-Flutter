import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_string_constants.dart';
import 'package:lost_pets_app/auth/model/auth_screen_type.dart';

class AuthScreenState extends ChangeNotifier {
  AuthScreenType _screenType = AuthScreenType.login;
  AuthScreenType get screenType => _screenType;
  RegExp _emailValidation = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  String _loginEmail = "";
  String _loginPassword = "";

  String _registerName = "";
  String _registerEmail = "";
  String _registerPassword = "";
  String _registerPasswordConfirm = "";

  String _loginEmailError = "";
  String get loginEmailError => _loginEmailError;

  String _loginPasswordError = "";
  String get loginPasswordError => _loginPasswordError;

  String _registerEmailError = "";
  String get registerEmailError => _registerEmailError;

  String _registerNameError = "";
  String get registerNameError => _registerNameError;

  String _registerPasswordError = "";
  String get registerPasswordError => _registerPasswordError;

  String _registerPasswordConfirmError = "";
  String get registerPasswordConfirmError => _registerPasswordConfirmError;

  void toggleScreenType() {
    _screenType = _screenType == AuthScreenType.login 
      ? AuthScreenType.register
      : AuthScreenType.login;
    notifyListeners();
  }

  void onLoginEmailChange(String emailValue) {
    _loginEmail = emailValue;    
  }

  void onLoginPasswordChange(String passwordValue) {
    _loginPassword = passwordValue;
  }

  void onRegisterNameChange(String nameValue) {
    _registerName = nameValue;
  }

  void onRegisterEmailChange(String emailValue) {
    _registerEmail = emailValue;
  }

  void onRegisterPasswordChange(String passwordValue) {
    _registerPassword = passwordValue;
  }

  void onRegisterPasswordConfirmChange(String passwordValue) {
    _registerPasswordConfirm = passwordValue;
  }

  void tryToRegister() {
    _registerNameError = _validateName(_registerName)
      ? ""
      : emptyFieldErrorText;

    _registerEmailError = _validateEmail(_registerEmail)
      ? ""
      : wrongEmailFormatErrorText;

    _registerPasswordError = _validatePassword(_registerPassword)
      ? ""
      : emptyFieldErrorText;

    _registerPasswordConfirmError = _validatePassword(_registerPasswordConfirm)
      ? ""
      : emptyFieldErrorText;

    if (_registerPassword != _registerPasswordConfirm) {
      _registerPasswordConfirmError = notEqualPasswordsErrorText;
    }
    notifyListeners();
  }

  void tryToLogin() {
     _loginEmailError = _validateEmail(_loginEmail)
      ? ""
      : wrongEmailFormatErrorText;

    _loginPasswordError = _validatePassword(_loginPassword)
      ? ""
      : emptyFieldErrorText;

    notifyListeners();
  }

  bool _validateEmail(String email) {
    return _emailValidation.hasMatch(email);
  }

  bool _validateName(String name) {
    return name.isNotEmpty;
  }

  bool _validatePassword(String password) {
    return password.isNotEmpty;
  }
}
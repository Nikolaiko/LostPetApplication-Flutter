import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/consts/ui_string_constants.dart';
import 'package:lost_pets_app/model/auth/auth_screen_type.dart';
import 'package:lost_pets_app/model/auth/login_data.dart';
import 'package:lost_pets_app/model/auth/registration_data.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/model/network_data/user_tokens.dart';
import 'package:lost_pets_app/auth/state/auth_app_state.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';

class AuthScreenState extends ChangeNotifier {
  AuthScreenType _screenType = AuthScreenType.login;
  AuthScreenType get screenType => _screenType;

  final RegExp _emailValidation = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final NetworkService _networkService;
  final LocalStorage _storage;
  final AuthAppState _authAppState;

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

  AuthScreenState(this._networkService, this._storage, this._authAppState);

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

  void skipLogin() {
    print("Saved");
    _storage.setSkippedLogin();
    _authAppState.updateState();
  }

  void tryToRegister() async {
    
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

    RequestResult<UserTokens> _result = await _networkService.register(
      RegistrationData(
        _registerEmail, 
        _registerPassword,
        _registerEmail
      )
    );

    if (_result.success) {
      _storage.saveTokens(_result.result!);
      _authAppState.updateState();
    }

    notifyListeners();
  }

  void tryToLogin() async {
     _loginEmailError = _validateEmail(_loginEmail)
      ? ""
      : wrongEmailFormatErrorText;

    _loginPasswordError = _validatePassword(_loginPassword)
      ? ""
      : emptyFieldErrorText;

    RequestResult<UserTokens> _result = await _networkService.login(LoginData(_loginEmail, _loginPassword));
    if (_result.success) {
      _storage.saveTokens(_result.result!);
      _authAppState.updateState();
    }

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
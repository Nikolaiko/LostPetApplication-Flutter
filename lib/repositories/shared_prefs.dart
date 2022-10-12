import 'dart:convert';

import 'package:lost_pets_app/model/network_data/user_tokens.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs implements LocalStorage {
  static const String tokensFieldName = "tokens";
  static const String skippedLoginFieldName = "skipped_login";

  SharedPreferences? _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  UserTokens? getTokens() {
    String? jsonString = _prefs?.getString(tokensFieldName);
    return jsonString != null 
      ? UserTokens.fromJson(jsonDecode(jsonString))
      : null;    
  }

  @override
  void saveTokens(UserTokens tokens) {
    Map<String, dynamic> map = tokens.toJson();
    String jsonString = jsonEncode(map);
    _prefs?.setString(tokensFieldName, jsonString);
  }
  
  @override
  bool isLoginSkipped() => _prefs?.getBool(skippedLoginFieldName) ?? false;
  
  @override
  void setSkippedLogin() => _prefs?.setBool(skippedLoginFieldName, true);
}
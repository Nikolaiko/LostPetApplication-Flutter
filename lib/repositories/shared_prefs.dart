import 'dart:convert';

import 'package:lost_pets_app/auth/model/user_tokens.dart';
import 'package:lost_pets_app/repositories/local_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs implements LocalStorage {
  SharedPreferences? _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  UserTokens? getTokens() {
    String jsonString = _prefs?.getString("tokens") ?? "";
    Map<String, dynamic> map = jsonDecode(jsonString);
    return UserTokens.fromJson(map);
  }

  @override
  void saveTokens(UserTokens tokens) {
    Map<String, dynamic> map = tokens.toJson();
    String jsonString = jsonEncode(map);
    _prefs?.setString("token", jsonString);
  }

}
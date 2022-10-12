import 'package:lost_pets_app/model/network_data/user_tokens.dart';

abstract class LocalStorage {
  void saveTokens(UserTokens tokens);
  UserTokens? getTokens();

  bool isLoginSkipped();
  void setSkippedLogin();
}
import 'package:lost_pets_app/auth/model/user_tokens.dart';

abstract class LocalStorage {
  void saveTokens(UserTokens tokens);
  UserTokens? getTokens();
}
import 'dart:async';

import 'package:lost_pets_app/model/network_data/user_tokens.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/auth/registration_data.dart';
import 'package:lost_pets_app/model/auth/login_data.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';

class InfiniteLoadingMocks implements NetworkService {
  static const Duration _duration = Duration(seconds: 5);

  @override
  Future<RequestResult<List<AnnouncementsResult>>> getAnnouncements() {    
    return Future.delayed(
      _duration, 
      () => RequestResult<List<AnnouncementsResult>>(result: null, success: true)
    );
  }

  @override
  Future<void> healthCheck() {    
    return Future.delayed(
      _duration, 
      () => { }
    );
  }

  @override
  Future<RequestResult<UserTokens>> login(LoginData data) {    
    return Future.delayed(
      _duration, 
      () => RequestResult<UserTokens>(result: null, success: true)
    );
  }

  @override
  Future<RequestResult<UserTokens>> register(RegistrationData data) {    
    return Future.delayed(
      _duration, 
      () => RequestResult<UserTokens>(result: null, success: true)
    );
  }
}
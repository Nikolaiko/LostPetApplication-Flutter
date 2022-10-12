import 'package:lost_pets_app/model/network_data/user_tokens.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/auth/registration_data.dart';
import 'package:lost_pets_app/model/auth/login_data.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';

import '../../test_data/announcements_network_data.dart';

class SimpleNetworkMock implements NetworkService {
  @override
  Future<RequestResult<List<AnnouncementsResult>>> getAnnouncements() {    
    return Future.delayed(
      Duration.zero, 
      () => RequestResult<List<AnnouncementsResult>>(
        success: true, 
        result: announcementsServerResponseMock
      )
    );
  }

  @override
  Future<void> healthCheck() {
    return Future.delayed(
      Duration.zero, 
      () => { }
    );
  }

  @override
  Future<RequestResult<UserTokens>> login(LoginData data) {    
    return Future.delayed(
      Duration.zero, 
      () => RequestResult<UserTokens>(result: null, success: true)
    );
  }

  @override
  Future<RequestResult<UserTokens>> register(RegistrationData data) {    
    return Future.delayed(
      Duration.zero, 
      () => RequestResult<UserTokens>(result: null, success: true)
    );
  }
}
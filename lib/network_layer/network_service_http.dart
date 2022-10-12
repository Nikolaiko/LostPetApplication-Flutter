import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lost_pets_app/model/auth/login_data.dart';
import 'package:lost_pets_app/model/auth/registration_data.dart';
import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/model/network_data/user_tokens.dart';
import 'package:lost_pets_app/network_layer/network_consts.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';

class NetworkServiceHttp implements NetworkService {
  final String _baseAddress = "https://petsproject.issart.com/api/1.0.0";
  final int _timeOutSeconds = 5;

  @override
  Future<void> healthCheck() async {
    http.Response _response = await http.get(
      Uri.parse("$_baseAddress/tech/healthcheck")
    )
    .timeout(
      Duration(seconds: _timeOutSeconds),
        onTimeout: () { 
          throw TimeoutException('The connection has timed out, Please try again!');
      }
    );

    print("Response status : ${_response.statusCode}");
  }
  
  @override
  Future<RequestResult<UserTokens>> login(LoginData data) async {

    http.Response _response = await http.post(
      Uri.parse("$_baseAddress/login/email"),
      body: jsonEncode(data.toJson()),
      headers: {
        "Content-Type" : "application/json"
      }
    );

    if (_response.statusCode == 200) {
      UserTokens _tokens = UserTokens.fromJson(jsonDecode(_response.body));
      return RequestResult(success: true, result: _tokens);
    } else {
      return RequestResult(success: false, result: null, message: "Fuck! Zarraza!");
    }    
  }

  @override
  Future<RequestResult<UserTokens>> register(RegistrationData data) async {
    http.Response _response = await http.post(
      Uri.parse("$_baseAddress/register/email"),
      body: jsonEncode(data.toJson()),
      headers: {
        "Content-Type" : "application/json"
      }
    );    

    if (_response.statusCode == 200) {
      UserTokens _tokens = UserTokens.fromJson(jsonDecode(_response.body));
      return RequestResult(success: true, result: _tokens);
    } else {
      return RequestResult(success: false, result: null, message: "Fuck! Zarraza!");
    }  
  }

  @override
  Future<RequestResult<List<AnnouncementsResult>>> getAnnouncements() async {
    http.Response _response = await http.get(
      Uri.parse("$_baseAddress/announcements"),      
      headers: {
        "Content-Type" : "application/json"
      }
    );

    if (_response.statusCode == 200) {
      List<dynamic> decodedBody = jsonDecode(_response.body);
      List<AnnouncementsResult>? announcement;
      bool responseResult = false;
      String message = successMessage;
      
      try {
        announcement = decodedBody.map((e) => AnnouncementsResult.fromJson(e)).toList();
        responseResult = true;
      } on TypeError catch(error) {
        responseResult = false;
        message = error.toString();      
      }
      return RequestResult(success: responseResult, result: announcement, message: message);
    } else {
      return RequestResult(success: false, result: null, message: "$errorStatusMessage ${_response.statusCode}");
    }      
  }
}
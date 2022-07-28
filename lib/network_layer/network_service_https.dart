import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lost_pets_app/auth/model/login_parameters.dart';
import 'package:lost_pets_app/auth/model/user_tokens.dart';
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
  }

  @override
  Future<void> login(LoginParameters parameters) async {
    http.Response _response = await http.post(
      Uri.parse("$_baseAddress/login/email"),
      headers: { 
        'accept': 'application/json; charset=UTF-8',
        'Content-Type': 'application/json'
      },
      body: jsonEncode(parameters.toJson())
    )
    .timeout(
      Duration(seconds: _timeOutSeconds),
        onTimeout: () { 
          throw TimeoutException('The connection has timed out, Please try again!');
      }
    );

    if (_response.statusCode == 200) {
      Map<String, dynamic> decoded = jsonDecode(_response.body);
      UserTokens tokens = UserTokens.fromJson(decoded);      
    } else {
      print("Fuck! Zarraza!");
    }
  }
}
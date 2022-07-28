import 'dart:async';

import 'package:http/http.dart' as http;

class NetworkService {
  final String _baseAddress = "https://petsproject.issart.com/api/1.0.0";
  final int _timeOutSeconds = 5;

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
}
//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// user login via email
  ///
  /// Send login data, to authorize user in system
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserEmailLogin] userEmailLogin:
  ///   User login parameters in JSON
  Future<Response> emailLoginWithHttpInfo({ UserEmailLogin userEmailLogin, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/login/email';

    // ignore: prefer_final_locals
    Object postBody = userEmailLogin;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// user login via email
  ///
  /// Send login data, to authorize user in system
  ///
  /// Parameters:
  ///
  /// * [UserEmailLogin] userEmailLogin:
  ///   User login parameters in JSON
  Future<UserLoginTokens> emailLogin({ UserEmailLogin userEmailLogin, }) async {
    final response = await emailLoginWithHttpInfo( userEmailLogin: userEmailLogin, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserLoginTokens',) as UserLoginTokens;
    
    }
    return Future<UserLoginTokens>.value();
  }

  /// user register via email
  ///
  /// Send login data, to register user in system
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserEmailRegister] userEmailRegister:
  ///   User register parameters in JSON
  Future<Response> emailRegisterWithHttpInfo({ UserEmailRegister userEmailRegister, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/register/email';

    // ignore: prefer_final_locals
    Object postBody = userEmailRegister;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// user register via email
  ///
  /// Send login data, to register user in system
  ///
  /// Parameters:
  ///
  /// * [UserEmailRegister] userEmailRegister:
  ///   User register parameters in JSON
  Future<UserLoginTokens> emailRegister({ UserEmailRegister userEmailRegister, }) async {
    final response = await emailRegisterWithHttpInfo( userEmailRegister: userEmailRegister, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserLoginTokens',) as UserLoginTokens;
    
    }
    return Future<UserLoginTokens>.value();
  }
}

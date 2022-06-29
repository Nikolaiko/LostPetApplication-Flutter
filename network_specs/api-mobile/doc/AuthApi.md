# openapi.api.AuthApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/nbaklanov-issart/PetProjectAPI/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailLogin**](AuthApi.md#emaillogin) | **POST** /login/email | user login via email
[**emailRegister**](AuthApi.md#emailregister) | **POST** /register/email | user register via email


# **emailLogin**
> UserLoginTokens emailLogin(userEmailLogin)

user login via email

Send login data, to authorize user in system

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final userEmailLogin = UserEmailLogin(); // UserEmailLogin | User login parameters in JSON

try {
    final result = api_instance.emailLogin(userEmailLogin);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->emailLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userEmailLogin** | [**UserEmailLogin**](UserEmailLogin.md)| User login parameters in JSON | [optional] 

### Return type

[**UserLoginTokens**](UserLoginTokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailRegister**
> UserLoginTokens emailRegister(userEmailRegister)

user register via email

Send login data, to register user in system

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AuthApi();
final userEmailRegister = UserEmailRegister(); // UserEmailRegister | User register parameters in JSON

try {
    final result = api_instance.emailRegister(userEmailRegister);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->emailRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userEmailRegister** | [**UserEmailRegister**](UserEmailRegister.md)| User register parameters in JSON | [optional] 

### Return type

[**UserLoginTokens**](UserLoginTokens.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


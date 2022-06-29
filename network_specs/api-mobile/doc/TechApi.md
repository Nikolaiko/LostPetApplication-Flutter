# openapi.api.TechApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/nbaklanov-issart/PetProjectAPI/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthcheck**](TechApi.md#healthcheck) | **GET** /tech/healthcheck | check backend avialibility


# **healthcheck**
> healthcheck()

check backend avialibility

send request to check if server respond at all

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = TechApi();

try {
    api_instance.healthcheck();
} catch (e) {
    print('Exception when calling TechApi->healthcheck: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


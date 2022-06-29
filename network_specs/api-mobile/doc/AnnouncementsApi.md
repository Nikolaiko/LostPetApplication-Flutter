# openapi.api.AnnouncementsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/nbaklanov-issart/PetProjectAPI/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**announcementsPost**](AnnouncementsApi.md#announcementspost) | **POST** /announcements | 
[**getAnnouncements**](AnnouncementsApi.md#getannouncements) | **GET** /announcements | Get all announcements


# **announcementsPost**
> List<LossAnnouncement> announcementsPost(newLossAnnouncement)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AnnouncementsApi();
final newLossAnnouncement = NewLossAnnouncement(); // NewLossAnnouncement | JSON with new announcement

try {
    final result = api_instance.announcementsPost(newLossAnnouncement);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementsApi->announcementsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newLossAnnouncement** | [**NewLossAnnouncement**](NewLossAnnouncement.md)| JSON with new announcement | [optional] 

### Return type

[**List<LossAnnouncement>**](LossAnnouncement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAnnouncements**
> List<LossAnnouncement> getAnnouncements(petType)

Get all announcements

Get all announcements or sorting by type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = AnnouncementsApi();
final petType = ; // PetTypes | 

try {
    final result = api_instance.getAnnouncements(petType);
    print(result);
} catch (e) {
    print('Exception when calling AnnouncementsApi->getAnnouncements: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **petType** | [**PetTypes**](.md)|  | [optional] 

### Return type

[**List<LossAnnouncement>**](LossAnnouncement.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AnnouncementsApi {
  AnnouncementsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /announcements' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [NewLossAnnouncement] newLossAnnouncement:
  ///   JSON with new announcement
  Future<Response> announcementsPostWithHttpInfo({ NewLossAnnouncement newLossAnnouncement, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/announcements';

    // ignore: prefer_final_locals
    Object postBody = newLossAnnouncement;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['bearerAuth'];
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

  /// Parameters:
  ///
  /// * [NewLossAnnouncement] newLossAnnouncement:
  ///   JSON with new announcement
  Future<List<LossAnnouncement>> announcementsPost({ NewLossAnnouncement newLossAnnouncement, }) async {
    final response = await announcementsPostWithHttpInfo( newLossAnnouncement: newLossAnnouncement, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LossAnnouncement>') as List)
        .cast<LossAnnouncement>()
        .toList(growable: false);

    }
    return Future<List<LossAnnouncement>>.value();
  }

  /// Get all announcements
  ///
  /// Get all announcements or sorting by type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [PetTypes] petType:
  Future<Response> getAnnouncementsWithHttpInfo({ PetTypes petType, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/announcements';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (petType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'petType', petType));
    }

    const authNames = <String>[];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Get all announcements
  ///
  /// Get all announcements or sorting by type
  ///
  /// Parameters:
  ///
  /// * [PetTypes] petType:
  Future<List<LossAnnouncement>> getAnnouncements({ PetTypes petType, }) async {
    final response = await getAnnouncementsWithHttpInfo( petType: petType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<LossAnnouncement>') as List)
        .cast<LossAnnouncement>()
        .toList(growable: false);

    }
    return Future<List<LossAnnouncement>>.value();
  }
}

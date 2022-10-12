import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/network_layer/network_service_http.dart';
import 'package:test/test.dart';

void main() {
  
  final networkLayer = NetworkServiceHttp();

  test("Can get and parse all announcement list", () async {    
    RequestResult<List<AnnouncementsResult>> response = await networkLayer.getAnnouncements();
    expect(response.success, true, reason: response.message);
    expect(response.result != null, true, reason: response.message);
  });
}
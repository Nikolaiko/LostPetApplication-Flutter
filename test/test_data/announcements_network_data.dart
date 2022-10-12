import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/network_data/geo_position_result.dart';
import 'package:lost_pets_app/model/network_data/pet_type_result.dart';

List<AnnouncementsResult> announcementsServerResponseMock = [
  AnnouncementsResult(
    13, 
    PetTypeResult.dogType, 
    "https://firebasestorage.googleapis.com/v0/b/lost-pets-e8cae.appspot.com/o/IMG_4A981326FDC2-1.jpeg", 
    "Strange pet here!", 
    "I found a pet in here it's black hungry and angry.", 
    GeoPositionResult(38.8951, -77.0364)
  ),
  AnnouncementsResult(
    14, 
    PetTypeResult.catType, 
    "https://firebasestorage.googleapis.com/v0/b/lost-pets-e8cae.appspot.com/o/IMG_4A981326FDC2-1.jpeg", 
    "Strange pet here!", 
    "I found a pet in here it's black hungry and angry.", 
    GeoPositionResult(38.8951, -77.0364)
  ),
  AnnouncementsResult(
    15, 
    PetTypeResult.otherType, 
    "https://firebasestorage.googleapis.com/v0/b/lost-pets-e8cae.appspot.com/o/IMG_4A981326FDC2-1.jpeg", 
    "Strange pet here!", 
    "I found a pet in here it's black hungry and angry.", 
    GeoPositionResult(38.8951, -77.0364)
  ),
];
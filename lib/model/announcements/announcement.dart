import 'package:lost_pets_app/model/announcements/geo_position.dart';
import 'package:lost_pets_app/model/announcements/pet_type.dart';


class Announcement {
  final String id;
  final PetType petType;
  final GeoPosition geoPosition;
  final String description;
  final String title;
  final String imageUrl;

  Announcement(
    {
      required this.id,
      required this.petType,
      required this.imageUrl,
      required this.description,
      required this.geoPosition,
      required this.title
    }
  );
}
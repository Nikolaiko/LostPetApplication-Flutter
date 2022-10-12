import 'package:flutter/material.dart';
import 'package:lost_pets_app/model/announcements/announcement.dart';
import 'package:lost_pets_app/model/announcements/announcement_filter_type.dart';
import 'package:lost_pets_app/model/announcements/pet_type.dart';
import 'package:lost_pets_app/model/network_data/announcements_result.dart';
import 'package:lost_pets_app/model/network_data/request_result.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';

class AnnouncementsListState extends ChangeNotifier {
  
  final NetworkService _networkService;

  List<Announcement> allAnnouncements = List.empty(growable: true);
  List<Announcement> filteredAnnouncements = List.empty(growable: true);
  bool isLoading = false;
  String errorText = "";
  AnnouncementsFilterType filterType = AnnouncementsFilterType.all;

  AnnouncementsListState(this._networkService);

  void loadAnnouncements() async {
    isLoading = true;
    notifyListeners();

    RequestResult<List<AnnouncementsResult>> result = await _networkService.getAnnouncements();
    
    _filterAllAnnouncements();

    isLoading = false;
    notifyListeners();
  }

  void changeFilterState(AnnouncementsFilterType newType) {
    filterType = newType;
    _filterAllAnnouncements();
    notifyListeners();
  }

  void _filterAllAnnouncements() {
    switch(filterType) {
      case AnnouncementsFilterType.all: {
        filteredAnnouncements = allAnnouncements;
        break;
      }
      case AnnouncementsFilterType.cat: {
        filteredAnnouncements = allAnnouncements.where(
          (element) => element.petType == PetType.cat
        ).toList();
        break;
      }
      case AnnouncementsFilterType.dog: {
        filteredAnnouncements = allAnnouncements.where(
          (element) => element.petType == PetType.dog
        ).toList();
        break;
      }
      case AnnouncementsFilterType.others: {
        filteredAnnouncements = allAnnouncements.where(
          (element) => element.petType == PetType.other
        ).toList();
        break;
      }
    }    
  }
}
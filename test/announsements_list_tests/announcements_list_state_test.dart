import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lost_pets_app/main_screen/tabs/announcements_tab/state/announcements_list_state.dart';
import 'package:lost_pets_app/model/announcements/announcement_filter_type.dart';
import 'package:lost_pets_app/network_layer/network_service.dart';
import 'package:provider/provider.dart';

import '../mocks/network_mocks/simple_network_mock.dart';
import '../mocks/network_mocks/infinite_loading_mock.dart';

void main() {
  NetworkService _infiniteLoading = InfiniteLoadingMocks();
  NetworkService _emptyLoading = SimpleNetworkMock();

  test("I can create AnnouncementsList state", () {
    AnnouncementsListState state = AnnouncementsListState(_infiniteLoading);
    expect(state, isNotNull);
  });

  testWidgets("Test initial state have empty list", (tester) async {
    GlobalKey _childKey = GlobalKey();

    await tester.pumpWidget(
      ChangeNotifierProvider<AnnouncementsListState>(
        create: (context) => AnnouncementsListState(_infiniteLoading),
        child: Container(key: _childKey),
      )
    );

    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!, 
        listen: false
      ).filteredAnnouncements.isEmpty,
      true
    );
    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!, 
        listen: false
      ).isLoading,
      false
    );
    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!, 
        listen: false
      ).errorText.isEmpty,
      true
    );
    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!, 
        listen: false
      ).filterType,
      AnnouncementsFilterType.all
    );
  });

  testWidgets("Test loading state", (tester) async {
    GlobalKey _childKey = GlobalKey();    
    AnnouncementsListState _state = AnnouncementsListState(_infiniteLoading);

    await tester.pumpWidget(
      ChangeNotifierProvider<AnnouncementsListState>(
        create: (context) => _state,
        child: Container(key: _childKey),
      )
    );

    _state.loadAnnouncements();

    await Future.microtask(tester.pump);
    

    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!,
        listen: false
      ).isLoading,
      true
    );

    await tester.pumpAndSettle(const Duration(seconds: 10));
  });

  testWidgets("Test changing filter state", (tester) async {
    GlobalKey _childKey = GlobalKey();    
    AnnouncementsListState _state = AnnouncementsListState(_emptyLoading);

    await tester.pumpWidget(
      ChangeNotifierProvider<AnnouncementsListState>(
        create: (context) => _state,
        child: Container(key: _childKey),
      )
    );

    _state.changeFilterState(AnnouncementsFilterType.cat);
    await Future.microtask(tester.pump);
    
    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!,
        listen: false
      ).filterType,
      AnnouncementsFilterType.cat
    );

    _state.changeFilterState(AnnouncementsFilterType.dog);
    await Future.microtask(tester.pump);
    
    expect(
      Provider.of<AnnouncementsListState>(
        _childKey.currentContext!,
        listen: false
      ).filterType,
      AnnouncementsFilterType.dog
    );
  });
}
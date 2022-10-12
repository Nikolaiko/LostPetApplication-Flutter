import 'package:flutter/material.dart';
import 'package:lost_pets_app/auth/auth_initial_flow.dart';
import 'package:lost_pets_app/main_screen/main_screen_widget.dart';
import 'package:lost_pets_app/main_screen/tabs/announcements_tab/view/announcements_list_widget.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoutes = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(child: AuthInitialFlow())
  }
);

final loggedInRoutes = RouteMap(
  routes: {
    '/': (_) => CupertinoTabPage(        
        child: const MainScreenWidget(), 
        paths: [
          '/ann',
          '/add',
          '/profile'
        ]
      ),
    '/ann':(route) => MaterialPage(child: AnnouncementsListWidget()),
    '/add':(route) => MaterialPage(child: AnnouncementsListWidget()),
    '/profile':(route) => MaterialPage(child: AnnouncementsListWidget())
  }
);

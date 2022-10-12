import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lost_pets_app/consts/ui/ui_color_consts.dart';
import 'package:lost_pets_app/consts/ui/ui_file_names.dart';
import 'package:routemaster/routemaster.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final tabState = CupertinoTabPage.of(context);

    return CupertinoTabScaffold(    
      controller: tabState.controller,
      tabBuilder: tabState.tabBuilder,
      tabBar: CupertinoTabBar(
        backgroundColor: mainBlue,
        activeColor: Colors.white,
        inactiveColor: Colors.white,     
        items: [
          BottomNavigationBarItem(
            label: 'Объявления',
            icon: SvgPicture.asset(announcementBottomIcon),
            activeIcon: SvgPicture.asset(announcementActiveBottomIcon)
          ),
          BottomNavigationBarItem(
            label: 'Создать объявление',
            icon: Icon(CupertinoIcons.search),
          ),
          BottomNavigationBarItem(
            label: 'Профиль',
            icon: Icon(CupertinoIcons.search),
          ),
        ],
      ),
    );
  }
}
import 'package:active_go/map_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'game_view.dart';
import 'home_view.dart';

class TabBarViewModel {
  int _currentTotalWidget = 0;

  List<Widget> _widgetsList;

  TabBarViewModel() {
    _widgetsList = [
      MapView(),
      HomeView(),
      GameView(),
    ];
  }

  Widget getCurrentWidget(int index) {
    return getWidgets()[index];
  }

  List<Widget> getWidgets() {
    _currentTotalWidget = _widgetsList.length;
    return _widgetsList;
  }

  int getNoOfScreens() {
    return _currentTotalWidget;
  }

  List<BottomNavigationBarItem> getBtmNavItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.map),
        label: 'Map',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.videogame_asset),
        label: 'Game',
      ),
    ];
  }
}

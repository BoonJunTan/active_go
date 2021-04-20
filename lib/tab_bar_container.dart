import 'package:active_go/tab_bar_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarContainer extends StatefulWidget {
  static String id = 'tab_bar_container';

  @override
  TabBarContainerState createState() => TabBarContainerState();
}

class TabBarContainerState extends State<TabBarContainer> {
  TabBarViewModel viewModel = TabBarViewModel();

  int tabIndex = 1; // Default go to Home View

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: viewModel.getNoOfScreens(),
      child: Scaffold(
        body: viewModel.getCurrentWidget(tabIndex),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: tabIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: viewModel.getBtmNavItems(),
          ),
        ),
      ),
    );
  }
}

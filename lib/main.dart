import 'package:active_go/home_view.dart';
import 'package:active_go/map_view.dart';
import 'package:active_go/tab_bar_container.dart';
import 'package:flutter/material.dart';

import 'game_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Map<String, WidgetBuilder> getRoutes() {
    return {
      TabBarContainer.id: (context) => TabBarContainer(),
      MapView.id: (context) => MapView(),
      HomeView.id: (context) => HomeView(),
      GameView.id: (context) => GameView(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ActiveGo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'ActiveGo'),
      initialRoute: TabBarContainer.id,
      routes: getRoutes(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

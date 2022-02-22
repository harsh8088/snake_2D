import 'package:flutter/material.dart';
import 'package:snake_game/app_data.dart';
import 'package:snake_game/game.dart';
import 'package:snake_game/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snake-2D',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.white),
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        AppData.homeRoute: (BuildContext context) => HomePage(),
        AppData.gameRoute: (BuildContext context) => GamePage(),
      },
    );
  }
}

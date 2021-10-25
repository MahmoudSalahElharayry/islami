import 'package:flutter/material.dart';
import 'package:islamic/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyThemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final SelectedIconColor = Color.fromRGBO(0, 0, 0, 1.0);
  static final UnSelectedIconColor = Color.fromRGBO(255, 255, 255, 1.0);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: MyThemeData.primaryColor),
      routes: {HomePage.routeName: (buildContext) => HomePage()},
      initialRoute: HomePage.routeName,
    );
  }
}

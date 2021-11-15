import 'package:flutter/material.dart';
import 'package:islamic/main.dart';

class suraDetailsScreen extends StatelessWidget {
  static const String routeName = 'Sura_details';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Islamic',
            style: TextStyle(
              color: MyThemeData.colorBlack,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatelessWidget {
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: 0,
              selectedItemColor: MyThemeData.SelectedIconColor,
              unselectedItemColor: MyThemeData.UnSelectedIconColor,
              backgroundColor: MyThemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                    label: 'Quran',
                    icon: Image.asset(
                      'assets/images/ic_quran.png',
                      width: 36,
                    )),
                BottomNavigationBarItem(
                    label: 'ahadeth',
                    icon: Image.asset('assets/images/ic_book.png', width: 36)),
                BottomNavigationBarItem(
                    label: 'Sebha',
                    icon: Image.asset('assets/images/ic_sebha.png', width: 36)),
                BottomNavigationBarItem(
                    label: 'Radio',
                    icon: Image.asset('assets/images/ic_radio.png', width: 36)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

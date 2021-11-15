import 'package:flutter/material.dart';
import 'package:islamic/hadeth/HadethTab.dart';
import 'package:islamic/quran/QuranTab.dart';
import 'package:islamic/radio/RadioTab.dart';
import 'package:islamic/sebha/SebhaTab.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int CurrentPage = 0;

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
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MyThemeData.primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                CurrentPage = index;
                setState(() {});
              },
              currentIndex: CurrentPage,
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
          body: Container(child: getCurrentPage()),
        ),
      ],
    );
  }

  Widget getCurrentPage() {
    if (CurrentPage == 0) {
      return QuranTab();
    } else if (CurrentPage == 1) {
      return HadethTab();
    } else if (CurrentPage == 2) {
      return SebhaTab();
    } else
      return RadioTab();
  }
}

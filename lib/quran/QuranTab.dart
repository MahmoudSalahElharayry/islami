import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Expanded(flex: 1, child: Image.asset('assets/images/logo.png')),
          Expanded(
            flex: 3,
            child: Container(),
          )
        ]),
      ],
    );
  }
}

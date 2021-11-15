import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuraName extends StatelessWidget {
  String Suraname;
  int SuraIndex;

  SuraName(this.Suraname, this.SuraIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${Suraname}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

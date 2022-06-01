import 'package:flutter/material.dart';

import '../detailScreen/detailScreen.dart';
import '../main.dart';

class BottomNavigationBar extends StatelessWidget {
  BottomNavigationBar({Key? key}) : super(key: key);
  dynamic onTap;
  dynamic items;
  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyHomePage(
                    title: 'Is this how awesome Flutter is?')));
          } else if (value == 1) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailScreen()));
          } else if (value == 2) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    const MyHomePage(title: 'Hey I\'m enjoying my tine here')));
          }
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
}
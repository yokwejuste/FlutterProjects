import 'package:flutter/material.dart';

import '../HomeScreen/homeScreen.dart';
import '../main.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("I'm Steve a future software engineer"),
        ),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Pop!'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MyHomePage(
                    title: 'Is this how awesome Flutter is?')));
          } else if (value == 1) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailScreen()));
          } else if (value == 2) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TipCalculator()));
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
    );
  }
}

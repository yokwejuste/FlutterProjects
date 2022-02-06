import 'package:flutter/material.dart';
import 'components/googles_maps.dart';
import 'components/sidebar.dart';

void main() => runApp(
      const MusicApp(),
    );

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 206, 202, 202),
          drawer: const SideDrawer(),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 34, 84, 126),
            actions: [
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
            title: Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "DashBoard",
                    style: TextStyle(
                        color: Color.fromARGB(255, 221, 221, 221),
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          body: const MapSample(),
        ),
      );
}

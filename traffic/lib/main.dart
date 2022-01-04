import 'package:flutter/material.dart';
import 'components/googles_maps.dart';
import 'components/sidebar.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            drawer: const SideDrawer(),
            appBar: AppBar(
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
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
            body:const MapSample(),
            )
      );
}

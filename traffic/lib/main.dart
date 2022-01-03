import 'package:flutter/material.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.menu,
                  color: Colors.red,
                ),
              ),
            ],
            backgroundColor: Colors.transparent,
            centerTitle: true,
            toolbarHeight: 50,
          ),
        ),
      );
}

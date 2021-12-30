import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello man"),
            backgroundColor: Colors.amber,
            centerTitle: true,
          ),
          body: Column(
            children: const [
              Text(" need food"),
              Icon(Icons.accessibility_sharp),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            child: const Icon(Icons.ring_volume),
            onPressed: () {},
          ),
        ),
        darkTheme: ThemeData(
          accentColor: Colors.amber,
          primaryColorDark: Colors.blueGrey,
        ),
      );
}

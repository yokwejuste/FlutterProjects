import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  List<Widget> boxes(int n, double w, double h) {
    List<Widget> bxs = <Widget>[];
    List fill = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.pink,
      Colors.orange,
      Colors.red,
      Colors.yellow,
      Colors.cyan,
      Colors.indigo,
      Colors.lime,
      Colors.teal,
      Colors.lightGreen,
      Colors.deepOrange,
      Colors.brown,
      Colors.grey,
      Colors.blueGrey,
      Colors.black,
      Colors.amber,
      Colors.lightBlue,
      Colors.limeAccent,
      Colors.indigoAccent,
      Colors.redAccent,
      Colors.yellowAccent,
      Colors.greenAccent,
    ];
    for (int i = 0; i < n; i++) {
      Container bx = Container(
        child: Text(i.toString()),
        color: fill[i],
        width: w,
        height: h,
      );
      bxs.add(bx);
    }
    return bxs;
  }

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Traffic Light'),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.indigo,
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.lightBlue,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.orange,
                Colors.red,
              ],
            ),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: boxes(5, 40, 40),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: const Icon(
            Icons.ac_unit,
          ),
          onPressed: () {},
        ),
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 26,
            fontStyle: FontStyle.italic,
          ),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}

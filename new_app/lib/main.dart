import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class StaticBooks {
  static const String cdn = "https://cdn.syncfusion.com/";
  static const String path = "content/images/downloads/ebook/ebook-cover/";

  static const List<String> covers = [
    "visual-studio-for-mac-succinctly-v1.png",
    "angular-testing-succinctly.png",
    "azure-devops-succinctly.png",
    "asp-net-core-3-1-succinctly.png",
    "angulardart_succinctly.png"
  ];

  static const List<String> titles = [
    "Visual Studio for Mac Succinctly",
    "Angular Testing Succinctly",
    "Azure DevOps Succinctly",
    "ASP.NET Core 3.1 Succinctly",
    "AngularDart Succinctly",
  ];
}

class Succinctly extends StatelessWidget {
  final String book;
  final String title;

  const Succinctly({
    Key? key,
    required this.book,
    required this.title,
  }) : super(key: key);

  PopupMenuItem<String> bookItem(item) => PopupMenuItem<String>(
        child: Text(item),
        value: item,
      );

  List listBooks() {
    return StaticBooks.titles.map((String item) => bookItem(item)).toList();
  }

  List<Widget> popMenuButton() => <Widget>[
        PopupMenuButton(
          icon: const Icon(Icons.book),
          itemBuilder: (BuildContext context) => listBooks(),
        ),
      ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
          actions: popMenuButton(),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(StaticBooks.cdn + StaticBooks.path + book),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.book_online),
          onPressed: () {},
        ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Succinctly(
          book: StaticBooks.covers[0],
          title: StaticBooks.titles[0],
        ),
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          // ignore: deprecated_member_use
          accentColor: Colors.amber,
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

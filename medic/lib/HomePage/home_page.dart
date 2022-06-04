import 'package:flutter/material.dart';
import 'package:medic/AuthentificationPages/LoginPage/login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 150),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 400,
                child: Image(
                  image: AssetImage('assets/images/bg.png'),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SizedBox(
                  width: 400,
                  height: 70,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

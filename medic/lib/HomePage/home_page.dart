import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medic/AuthenticationPages/LoginPage/login_page.dart';
import '../AppResources/app_colors.dart';
import '../AppResources/svg_images.dart';

final List<String> images = [
  homeImages_1,
  homeImages_2,
];

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
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Stack(
                        // overflow: Overflow.visible,
                        children: <Widget>[
                          Positioned(
                            right: -40.0,
                            top: -40.0,
                            child: InkResponse(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: const CircleAvatar(
                                backgroundColor: Colors.red,
                                child: Icon(Icons.close),
                              ),
                            ),
                          ),
                          Form(
                            // key: _formKey,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: Text("Submit"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Text("Open Popup"),
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 40,
                right: 20,
              ),
              child: Text(
                "Hello",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: CarouselSlider(
              items: [
                Column(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SizedBox(
                          width: 380,
                          child: SvgPicture.string(
                            homeImages_2,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: SizedBox(
                          width: 380,
                          child: SvgPicture.string(
                            homeImages_1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: basicButtonColor,
                  border: Border.all(
                    color: basicButtonColor,
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
                      style: TextStyle(fontSize: 30, color: Colors.white),
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

import 'package:flutter/material.dart';
import 'package:traffic/components/secondPage/secondPageHome.dart';
import 'package:traffic/components/transitions/pageRoute.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            child: Center(),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 53, 55, 56),
              image: DecorationImage(
                image: AssetImage("images/8.jpeg"),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Cart'),
            onTap: () => {
              Navigator.push(
                context,
                BouncyPage(
                  widget: const SecondScreen(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

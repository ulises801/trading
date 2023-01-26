import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';

Drawer sideBarPersonalizado(BuildContext context) {
  return Drawer(
    backgroundColor: MyApp.black,
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
              color: MyApp.black,
            ),
            child: SvgPicture.asset(
              'assets/logo.svg',
            )),
        ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 0.3),
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ],
    ),
  );
}

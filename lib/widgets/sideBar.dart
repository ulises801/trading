import 'package:flutter/material.dart';

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
        const DrawerHeader(
          decoration: BoxDecoration(
            color: MyApp.black,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          title: const Text(
            'Item 1',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text(
            'Item 2',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}

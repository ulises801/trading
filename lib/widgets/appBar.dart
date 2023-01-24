import 'package:flutter/material.dart';

AppBar appBarLatera(Color black) {
  return AppBar(
    leading: Builder(builder: (BuildContext context) {
      return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        icon: const Icon(Icons.align_horizontal_left_rounded),
        iconSize: 30,
      );
    }),
    elevation: 0,
    backgroundColor: black,
  );
}

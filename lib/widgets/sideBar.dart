import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/profile.dart';

void main() => runApp(const MyApp());

_launchURLApp() async {
  var url = Uri.parse("https://gbm.com/faqs");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

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
            side: BorderSide(color: Colors.white, width: 0.0),
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
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
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
        ),
        ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 0.3),
          ),
          title: const Text(
            'Counseling',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Counseling'),
              content: const Text(
                  'Press OK and one of our advisors will contact you by phone shortly.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: MyApp.orange),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text(
                    'OK',
                    style: TextStyle(color: MyApp.orange),
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white, width: 0.3),
          ),
          title: const Text(
            'FAQs',
            style: TextStyle(color: Colors.white),
          ),
          onTap: _launchURLApp,
        ),
      ],
    ),
  );
}

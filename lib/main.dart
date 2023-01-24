import 'package:flutter/material.dart';
import 'package:trading/widgets/appBar.dart';
import 'package:trading/widgets/sideBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'trading';

  //Color palette
  static const black = const Color(0xFF1C1E24);
  static const darkBlue = const Color(0xFF313138);
  static const orange = const Color(0xFFFF7D1F);
  static const green = const Color(0xFFBFEAB9);
  static const lightBlue = const Color(0xFFADF1FB);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.black,
      appBar: appBarLatera(MyApp.black),
      drawer: sideBarPersonalizado(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              arriba(),
              SizedBox(height: 20),
              userBalance(),
            ]),
      ),
    );
  }
}

class arriba extends StatelessWidget {
  const arriba({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        'Hello, Victor',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class userBalance extends StatelessWidget {
  const userBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: MyApp.darkBlue,
      ),
      padding: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Container(
            child: avatar(),
          ),
          balance(),
          IconButton(
            padding: EdgeInsets.only(left: 100),
            icon: const Icon(
              Icons.keyboard_arrow_right_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Padding balance() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'YOUR BALANCE',
            style: TextStyle(color: MyApp.orange, fontSize: 15),
          ),
          SizedBox(height: 10),
          Text('\$25,0254.20',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5))
        ],
      ),
    );
  }

  Stack avatar() {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: CircleAvatar(
            child: CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage('assets/profile2.jpeg'),
            ),
            radius: 28,
            backgroundColor: Colors.black,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 40, top: 40),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green[400],
            ),
          ),
        ),
      ],
    );
  }
}

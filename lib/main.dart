import 'package:flutter/material.dart';
import 'package:trading/widgets/appBar.dart';
import 'package:trading/widgets/sideBar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              sectionTitle(),
              achievements(),
              sectionTitle2()
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

class sectionTitle extends StatelessWidget {
  const sectionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Achievements',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: MyApp.orange),
                )
              ],
            )
          ],
        ));
  }
}

class sectionTitle2 extends StatelessWidget {
  const sectionTitle2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Investment portfolio',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'See all',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: MyApp.orange),
                )
              ],
            )
          ],
        ));
  }
}

class achievements extends StatelessWidget {
  const achievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFFF9346)),
                margin: EdgeInsets.all(4),
                width: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '💣',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '1 week streak',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFBFEAB9)),
                margin: EdgeInsets.all(4),
                width: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '🐉',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '3 week streak',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFADF1FB)),
                margin: EdgeInsets.all(4),
                width: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '💪',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '7 week streak',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color(0xFFFFC2DF)),
                margin: EdgeInsets.all(4),
                width: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '🚀',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '12 week streak',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Color.fromARGB(255, 247, 52, 52)),
                margin: EdgeInsets.all(4),
                width: 100.0,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '🔱',
                        style: TextStyle(fontSize: 35),
                      ),
                      Text(
                        '20 week streak',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      )
                    ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyApp.black,
        title: const Text('Profile'),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile2.jpeg')),
            ),
            Container(
              margin: EdgeInsets.only(top: 22),
              child: Column(
                children: [
                  Text(
                    'Victor Hugo',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    child: Text(
                      '@victur13',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFBFEAB9)),
                      height: 100,
                      width: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '32',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Posts',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: MyApp.darkBlue),
                      height: 100,
                      width: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '26354',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: MyApp.darkBlue),
                      height: 100,
                      width: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '256',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Subscriptions',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            sectionTitle3()
          ],
        ),
      ),
    );
  }
}

class sectionTitle3 extends StatelessWidget {
  const sectionTitle3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Posts',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Sorting',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: MyApp.orange),
                )
              ],
            )
          ],
        ));
  }
}

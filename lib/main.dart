import 'package:flutter/material.dart';
import 'package:trading/pages/company.dart';
import 'package:trading/pages/profile.dart';
import 'package:trading/widgets/appBar.dart';
import 'package:trading/widgets/sideBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  static const red = const Color(0xFFDD5353);

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
              welcomeText(),
              SizedBox(height: 15),
              userBalance(),
              sectionTitle(mensaje: 'Achievements'),
              achievements(),
              sectionTitle(mensaje: 'Investment portfolio'),
              Flexible(
                  flex: 1, child: SingleChildScrollView(child: investment())),
            ]),
      ),
    );
  }
}

class investment extends StatelessWidget {
  const investment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            CardPersonalizada(
                name: 'Apple',
                money: '\$13,503',
                percentage: 0.7,
                icon: FontAwesomeIcons.apple),
            CardPersonalizada(
                name: 'Amazon',
                money: '\$13,503',
                percentage: 0.2,
                icon: FontAwesomeIcons.amazon)
          ],
        ),
        TableRow(
          children: [
            CardPersonalizada(
                name: 'Valve',
                money: '\$13,503',
                percentage: 0.5,
                icon: FontAwesomeIcons.steam),
            CardPersonalizada(
                name: 'Blizzard',
                money: '\$14,503',
                percentage: 0.6,
                icon: FontAwesomeIcons.battleNet)
          ],
        ),
      ],
    );
  }
}

class welcomeText extends StatelessWidget {
  const welcomeText({super.key});

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
      child: Expanded(
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
          ],
        ),
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
  final String mensaje;
  const sectionTitle({super.key, required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 25, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  this.mensaje,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                TextButton(
                  style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all<Color>(MyApp.darkBlue),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => company()));
                  },
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: MyApp.orange),
                  ),
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

class CardPersonalizada extends StatelessWidget {
  final String name;
  final String money;
  final double percentage;
  final IconData icon;
  const CardPersonalizada({
    super.key,
    required this.name,
    required this.money,
    required this.percentage,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
          color: MyApp.darkBlue, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  this.icon,
                  color: Colors.white,
                  size: 40,
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  color: Color.fromRGBO(172, 173, 175, 1),
                  hoverColor: MyApp.green,
                  focusColor: MyApp.green,
                  onPressed: () {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Text(
                      this.name,
                      style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      money + ' (' + (percentage * 100).toString() + ' %)',
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ],
                )
              ],
            ),
            LinearPercentIndicator(
              padding: EdgeInsets.symmetric(horizontal: 0),
              width: 125,
              progressColor: MyApp.orange,
              percent: this.percentage,
              backgroundColor: Color.fromRGBO(72, 72, 77, 1),
              barRadius: Radius.circular(10),
            )
          ],
        ),
      ),
    );
  }
}

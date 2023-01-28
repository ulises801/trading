import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../main.dart';
import '../widgets/appBar.dart';
import '../widgets/sideBar.dart';

class company extends StatelessWidget {
  const company({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyApp.black,
      appBar: appBarLatera(MyApp.black),
      drawer: sideBarPersonalizado(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionTittle(),
            YourMoney(),
            Column(
              children: [
                CompanyDetails(
                    icon: FontAwesomeIcons.apple,
                    name: 'Apple',
                    valueName: 'Value',
                    money: '\$ 1.000.000',
                    gains: '+ 20%',
                    color: MyApp.green),
                CompanyDetails(
                    icon: FontAwesomeIcons.steam,
                    name: 'Valve',
                    valueName: 'Value Inc',
                    money: '\$ 10,000',
                    gains: '- 20%',
                    color: MyApp.red),
                CompanyDetails(
                    icon: FontAwesomeIcons.battleNet,
                    name: 'Activision Blizzard',
                    valueName: 'ATVI',
                    money: '\$ 50,00',
                    gains: '+ 5%',
                    color: MyApp.green),
                CompanyDetails(
                    icon: FontAwesomeIcons.amazon,
                    name: 'Amazon',
                    valueName: 'AMZN',
                    money: '\$ 25,000',
                    gains: '+ 5%',
                    color: MyApp.green),
                CompanyDetails(
                    icon: FontAwesomeIcons.google,
                    name: 'Alphabet',
                    valueName: 'GOOG',
                    money: '\$ 10,000',
                    gains: '- 30%',
                    color: MyApp.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTittle extends StatelessWidget {
  const SectionTittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 25, bottom: 20),
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Your Companies',
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

class YourMoney extends StatelessWidget {
  const YourMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, right: 5),
        padding: EdgeInsets.symmetric(horizontal: 9.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Gains',
                  style: TextStyle(fontSize: 16, color: MyApp.green),
                )
              ],
            ),
          ],
        ));
  }
}

class CompanyDetails extends StatelessWidget {
  final IconData icon;
  final String name;
  final String valueName;
  final String money;
  final String gains;
  final Color color;
  const CompanyDetails(
      {super.key,
      required this.icon,
      required this.name,
      required this.valueName,
      required this.money,
      required this.gains,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: MyApp.darkBlue),
      height: 120,
      width: 400,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10, left: 20),
              child: Icon(
                this.icon,
                color: Colors.white,
                size: 50,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      this.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(this.valueName,
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                            fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    this.money,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(this.gains,
                      style: TextStyle(
                          color: this.color,
                          fontSize: 14,
                          fontWeight: FontWeight.w400))
                ],
              ),
            ),
          ]),
    );
  }
}

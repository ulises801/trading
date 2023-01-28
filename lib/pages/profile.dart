import 'package:flutter/material.dart';
import 'package:trading/widgets/appBar.dart';
import 'package:trading/widgets/sideBar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
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
                              '32',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
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
                      SizedBox(width: 5),
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
                  ),
                )),
            SectionTitle3(),
            Flexible(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [Post(), Post(), Post()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//POST
class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: MyApp.darkBlue),
      height: 120,
      width: 400,
      child: Column(children: [
        Row(
          children: [
            Column(
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile2.jpeg'))
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jonh Cage',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text('10 min ago',
                      style: TextStyle(
                          color: Color.fromARGB(126, 158, 158, 158),
                          fontSize: 8,
                          fontWeight: FontWeight.w300))
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text('OMG this ETF is so good !!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
            )
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Icon(
            Icons.arrow_circle_up,
            color: Colors.white,
            size: 22,
          ),
          Text(
            '32',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          Text('_', style: TextStyle(color: MyApp.darkBlue)),
          Icon(
            Icons.arrow_circle_down,
            color: Colors.white,
            size: 22,
          ),
          Text(
            '9',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
        ])
      ]),
    );
  }
}

class SectionTitle3 extends StatelessWidget {
  const SectionTitle3({super.key});

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

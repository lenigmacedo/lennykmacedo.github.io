import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio_web/utils/mouse_hover.dart';
import 'package:portfolio_web/utils/text_style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = 'Lennyk';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF333333),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF333333),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: <Widget>[
                        HandCursor(
                          child: Text(
                            "Home",
                            style: menuOptions,
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          width: 50,
                          height: 1,
                        )
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: HandCursor(
                    child: Text(
                      "Projects",
                      style: menuOptions,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: HandCursor(
                    child: Text(
                      "Github",
                      style: menuOptions,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: HandCursor(
                    child: Text(
                      "Linkedin",
                      style: menuOptions,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: HandCursor(
                    child: Text(
                      "About",
                      style: menuOptions,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: HandCursor(
                    child: Text(
                      "Contact",
                      style: menuOptions,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TyperAnimatedTextKit(
                    speed: Duration(milliseconds: 90),
                    textStyle: TextStyle(
                        fontFamily: "Plain", color: Colors.white, fontSize: 45),
                    text: [
                      "Lennyk Macedo",
                      "Developer",
                      "Flutter Mobile and",
                      "Front-End"
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Learn more about what I do",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Plain', fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30, top: 5),
                  child: Icon(
                    Icons.expand_more,
                    size: 25,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/text_style.dart';

class HomeScreenMobile extends StatefulWidget {
  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFF292929),
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Home",
                    style: menuOptions,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Projects",
                    style: menuOptions,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Github",
                    style: menuOptions,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Linkedin",
                    style: menuOptions,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "About",
                    style: menuOptions,
                  ),
                ),
                Text(
                  "Contact",
                  style: menuOptions,
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF333333),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFF333333),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TyperAnimatedTextKit(
                      speed: Duration(milliseconds: 90),
                      textStyle: TextStyle(
                          fontFamily: "Plain",
                          color: Colors.white,
                          fontSize: 45),
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
      ),
    );
  }
}

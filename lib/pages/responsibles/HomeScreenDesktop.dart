import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/mouse_hover.dart';
import 'package:portfolio_web/utils/text_style.dart';

import 'dart:js' as js;
import 'dart:html' as html;

class HomeScreenDesktop extends StatefulWidget {
  @override
  _HomeScreenDesktopState createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop> {
  Color appbarColor = Color(0xFF333333);
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Color(0xFF333333),
        // ),
        body: Column(
          children: <Widget>[
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              height: 60,
              duration: Duration(milliseconds: 700),
              color: appbarColor,
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                pageSnapping: false,
                scrollDirection: Axis.vertical,
                onPageChanged: (index) {
                  Color x;
                  if (index == 1) {
                    x = Colors.grey[600];
                  } else {
                    x = Color(0xFF333333);
                  }

                  setState(() {
                    appbarColor = x;
                  });
                },
                children: <Widget>[
                  Container(
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
                                      child: GestureDetector(
                                        onTap: () {
                                          html.window.location.reload();
                                        },
                                        child: Text(
                                          "Home",
                                          style: menuOptions,
                                        ),
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
                                child: GestureDetector(
                                  onTap: () {
                                    js.context.callMethod('open',
                                        ['https://github.com/lenigmacedo']);
                                  },
                                  child: Text(
                                    "Github",
                                    style: menuOptions,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: HandCursor(
                                child: GestureDetector(
                                  onTap: () {
                                    js.context.callMethod('open', [
                                      'https://www.linkedin.com/in/lennykmacedo'
                                    ]);
                                  },
                                  child: Text(
                                    "Linkedin",
                                    style: menuOptions,
                                  ),
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
                                    fontFamily: "Plain",
                                    color: Colors.white,
                                    fontSize: 45),
                                text: [
                                  "Lennyk Macedo",
                                  "Developer",
                                  "Flutter Mobile and Front-End",
                                  ""
                                ],
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              HandCursor(
                                child: Text(
                                  "Learn more about what I do",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Plain',
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 30, top: 5),
                                child: HandCursor(
                                  child: Icon(
                                    Icons.expand_more,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey[600],
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

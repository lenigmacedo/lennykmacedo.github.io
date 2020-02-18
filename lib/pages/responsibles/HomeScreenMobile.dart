import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/utils/mouse_hover.dart';
import 'package:portfolio_web/utils/text_style.dart';
import 'dart:js' as js;
import 'dart:html' as html;

class HomeScreenMobile extends StatefulWidget {
  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  Color appbarColor = Color(0xFF333333);
  PageController pageController = PageController();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        key: scaffoldKey,
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Projects",
                        style: menuOptions,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        js.context.callMethod(
                            'open', ['https://github.com/lenigmacedo']);
                      },
                      child: Text(
                        "Github",
                        style: menuOptions,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        js.context.callMethod('open',['https://www.linkedin.com/in/lennykmacedo']);
                      },
                      child: Text(
                        "Linkedin",
                        style: menuOptions,
                      ),
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
        body: Column(
          children: <Widget>[
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              height: 60,
              duration: Duration(milliseconds: 700),
              color: appbarColor,
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GestureDetector(
                      onTap: () {
                        scaffoldKey.currentState.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      )),
                ),
                alignment: Alignment.centerLeft,
              ),
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
                                  "Flutter Mobile and \nFront-End",
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

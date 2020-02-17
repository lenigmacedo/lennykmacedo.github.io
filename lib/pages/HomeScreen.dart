import 'package:flutter/material.dart';

import 'responsibles/HomeScreenDesktop.dart';
import 'responsibles/HomeScreenMobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, information) {
        if (information.deviceScreenType == DeviceScreenType.Desktop) {
          return HomeScreenDesktop();
        }

        if (information.deviceScreenType == DeviceScreenType.Mobile) {
          return HomeScreenMobile();
        }

        if (information.deviceScreenType == DeviceScreenType.Tablet) {
          return HomeScreenDesktop();
        }
      },
    );
  }
}

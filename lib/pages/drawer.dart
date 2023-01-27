// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:smart_parking/pages/home_page.dart';

class ZoomDrawerTest extends StatefulWidget {
  const ZoomDrawerTest({Key? key}) : super(key: key);

  @override
  _ZoomDrawerTestState createState() => _ZoomDrawerTestState();
}

class _ZoomDrawerTestState extends State<ZoomDrawerTest> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      style: DrawerStyle.Style1,
      menuScreen: const MENU_SCREEN(),
      mainScreen: const HomePage(),
      borderRadius: 40.0,
      showShadow: true,
      angle: -12.0,
      backgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 1,
      openCurve: Curves.easeIn,
      closeCurve: Curves.easeInOut,
    );
  }
}

class MENU_SCREEN extends StatefulWidget {
  const MENU_SCREEN({Key? key}) : super(key: key);

  @override
  _MENU_SCREENState createState() => _MENU_SCREENState();
}

class _MENU_SCREENState extends State<MENU_SCREEN> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 219, 220, 228),
    );
  }
}

class MAIN_SCREEN extends StatefulWidget {
  const MAIN_SCREEN({Key? key}) : super(key: key);

  @override
  _MAIN_SCREENState createState() => _MAIN_SCREENState();
}

class _MAIN_SCREENState extends State<MAIN_SCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () => ZoomDrawer.of(context)!.toggle(),
              icon: const Icon(Icons.menu))),
      body: null,
    );
  }
}

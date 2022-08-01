import 'package:flutter/material.dart';
import 'package:flutter_animation_drawer_demo/first_screen.dart';
import 'package:flutter_animation_drawer_demo/menu_screen.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ZoomDrawer(
          borderRadius: 50,
          shadowLayer1Color:Colors.blue.withOpacity(0.2),
          shadowLayer2Color:Colors.blue.withOpacity(0.4),
          showShadow: true,
          menuScreenWidth: 250,slideWidth: 250,
          menuBackgroundColor: Colors.white,
      menuScreen: MenuScreen(),
      mainScreen: FirstScreen(),
      angle: 0.0,
      style: DrawerStyle.defaultStyle,
    ));
  }
}

import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_it/constants/colors.dart';
import 'package:shop_it/widgets/buildAppBar.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop It",
      theme: ThemeData(
        fontFamily: 'OpenSans',
      ),
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Placeholder(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/nav_home.svg'),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/nav_shop.svg'),
              label: "Shop"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/nav_messages.svg'),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/nav_fav.svg'),
              label: "Favorites"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/nav_account.svg'),
              label: "Account"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryOrange,
        onTap: _onItemTapped,
      ),
    );
  }
}

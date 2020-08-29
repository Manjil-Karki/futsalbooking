import 'package:flutter/material.dart';
import 'package:futsal/screens/bookings.dart';
import 'package:futsal/screens/profile.dart';
import 'package:futsal/screens/teams.dart';

import 'home.dart';

class BNB extends StatefulWidget {
  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  List<Widget> _screen = [Home(), Teams(), Bookings(), Profile()];
  void _onPageChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTap(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: PageView(
    controller: _pageController,
    children: _screen,
    onPageChanged: _onPageChange,
    physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
    currentIndex: _currentIndex,
    backgroundColor: Colors.green,
    fixedColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    selectedIconTheme: IconThemeData(size: 35),
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.group),
        title: Text('Teams'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        title: Text('Bookings'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.portrait),
        title: Text('Profile'),
      ),
    ],
    onTap: (index) => _onTap(index),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import "package:recogram/pages/forum.dart";
import "package:recogram/pages/settings.dart";

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Forum(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
        padding: EdgeInsets.fromLTRB(0, paddingTop, 0, 0),
      ),
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Forum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.grey[100],
        onTap: _onItemTapped,
      ),
    );
  }
}

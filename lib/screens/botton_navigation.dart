import 'dart:io';

import 'package:clientapp/context.dart';
import 'package:clientapp/screens/BottomNavigationTabs/notification.dart';
import 'package:clientapp/screens/BottomNavigationTabs/profile_screen.dart';
import 'package:clientapp/screens/BottomNavigationTabs/search_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'BottomNavigationTabs/home_screen.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const SearchScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MenuScreen(),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // ignore: sized_box_for_whitespace
      bottomNavigationBar: Container(
        height: Platform.isAndroid ? context.sH() / 13 : context.sH() / 9,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          child: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Theme.of(context).primaryColor,
                textTheme: Theme.of(context).textTheme.copyWith(
                    bodySmall: const TextStyle(color: Colors.black54))),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/home.svg',
                    color: _selectedIndex == 0
                        ? Colors.white
                        : const Color(0xFF868686),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/search.svg',
                    color: _selectedIndex == 1
                        ? Colors.white
                        : const Color(0xFF868686),
                  ),
                  label: 'School',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/notification.svg',
                    color: _selectedIndex == 2
                        ? Colors.white
                        : const Color(0xFF868686),
                  ),
                  label: 'School',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    color: _selectedIndex == 3
                        ? Colors.white
                        : const Color(0xFF868686),
                  ),
                  label: 'Business',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}

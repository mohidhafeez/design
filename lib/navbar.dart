import 'package:design/colors_screen/add_view.dart';
import 'package:design/colors_screen/chat.dart';
import 'package:design/home_view.dart';
import 'package:design/colors_screen/navigton.dart';
import 'package:design/colors_screen/profile.dart';
import 'package:flutter/material.dart';

class NavbarView extends StatefulWidget {
  const NavbarView({super.key});

  @override
  State<NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<NavbarView> {
  int _currentIndex = 0;

  final List<Widget> screens = [
    const HomeView(),
    const NaviationView(),
    AddView(),
    const ChatView(),
    const ProfileView(),
  ];

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedItemColor: Colors.green,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.navigation_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.add,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_outlined,
              ),
              label: ""),
        ],
      ),
    );
  }
}


import 'package:elearning/views/chat_parent_view.dart';
import 'package:elearning/views/parent_home.dart';
import 'package:elearning/views/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBarParent extends StatefulWidget {
  const CustomBottomNavigationBarParent({super.key});
  static const routeName = 'CustomBottomNavigationBar';
  @override
  State<CustomBottomNavigationBarParent> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBarParent> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
     ParentHome(),
     ChatParentView(),
     Settings()
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        tabMargin: const EdgeInsets.only(bottom: 8, top: 8, left: 4, right: 4),
        color: const Color.fromARGB(255, 220, 222, 228),
        activeColor: Colors.red,
        gap: 6,
        backgroundColor: Colors.red,
        tabBackgroundColor: const Color.fromARGB(255, 220, 222, 228),
        padding: const EdgeInsets.all(16),
        tabBorderRadius: 16,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Dashboard",
          ),
         
          GButton(
            icon: Icons.chat,
            text: "Massenger",
          ) ,
         
          GButton(
            icon: Icons.settings,
            text: "Settings",
          )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        selectedItemColor: const Color(0xFF1D1E3A),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(AssetImage(
                'assets/icons/home${_currentIndex == 0 ? '_bold' : ""}.png')),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: ImageIcon(AssetImage(
                'assets/icons/clock${_currentIndex == 1 ? '_bold' : ""}.png')),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: ImageIcon(AssetImage(
                'assets/icons/user${_currentIndex == 2 ? '_bold' : ""}.png')),
          ),
        ],
      ),
    );
  }
}

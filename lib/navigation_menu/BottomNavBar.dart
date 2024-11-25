import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/home-2.png', width: 30, height: 30),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/heart.png', width: 30, height: 30),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 2
                          ? Colors.lightBlue.withOpacity(0.2)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('bag-2.png', width: 30, height: 30),
                  ),
                ],
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/notify.png', width: 30, height: 30),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('profile.png', width: 30, height: 30),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
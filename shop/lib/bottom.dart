import 'package:flutter/material.dart';

class Navbottom extends StatefulWidget {
  const Navbottom({super.key});

  @override
  State<Navbottom> createState() => _NavbottomState();
}

class _NavbottomState extends State<Navbottom> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  NavigationBar(
      backgroundColor: Colors.pink.shade200,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.red.shade900,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.send_outlined),
            icon: Icon(Icons.business),
            label: 'marketing',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'market3',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.two_wheeler_outlined),
            icon: Icon(Icons.face),
            label: 'work',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            label: 'review',
          ),
        ] ,
      );
  }
}

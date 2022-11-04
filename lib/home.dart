import 'package:flutter/material.dart';

import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // state variables


  int _selectedIndex = 0;
  static List<Widget> pages = [
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _selectOnTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.headline6,
        ),
        elevation: 0,
      ),
      // bottom navigation items
      body: pages[_selectedIndex],
      // bottom navigation
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectOnTap,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
                  label: 'Card1'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Card3'
          ),
        ],
      ),
      
    );
  }
}

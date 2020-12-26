import 'package:flutter/material.dart';

import '../home.dart';
import 'account.dart';
import 'custom_appbar.dart';
import 'favorit.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int curentIndex = 0;
  List pages = [
    Home(),
    Cutomm(),
    Account(),
    Favrot(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: pages[curentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: curentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (newIndex) {
            curentIndex = newIndex;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
            BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_number), label: 'الاقسام'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'المفضلة')
          ],
        ),
      ),
    );
  }
}

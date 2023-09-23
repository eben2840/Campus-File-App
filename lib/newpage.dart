import 'package:flutter/material.dart';
import 'package:text/Find.dart';
import 'package:text/Navpage.dart';
import 'AnotherPage.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'About.dart';

class Newpage extends StatefulWidget {
  Newpage({Key? key}) : super(key: key);

  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  int currentIndex = 0;
  final screens = [
    Navpage(),
    Find(),
    AnotherPage(),
    About(),
    
   
  ];
  

  late WebViewController controller;
  double progress = 0.0;

  @override
  Widget build(BuildContext context) => Scaffold(
        
        body: screens[currentIndex],
        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          // unselectedItemColor: Color.fromARGB(255, 44, 43, 43),
          selectedItemColor: Color.fromARGB(255, 54, 72, 239),
          iconSize: 30,
          selectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle_rounded,
              ),
              label: 'Map',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_rounded,
              ),
              label: 'Search',
              backgroundColor: Colors.red,
            ),
            
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_2_rounded,
              ),
              label: 'Profile',
              backgroundColor: Colors.red,
            ),
          ],
        ),

        
      );
}

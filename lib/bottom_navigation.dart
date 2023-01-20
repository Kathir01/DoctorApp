import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int myIndex = 0;
  List<Widget> PageList = const [
    SecondPage(),
    Text(
      'Sorry no data in your like',
      style: TextStyle(fontSize: 30),
    ),
    NextPage(),
    Text(
      'All setings are fine',
      style: TextStyle(fontSize: 40),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageList[myIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 250, 249, 249),
        selectedItemColor: Color.fromARGB(255, 138, 104, 255),
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Like'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Janji'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

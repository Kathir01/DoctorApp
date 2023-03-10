import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';
import 'package:task2/styles/styles.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int myIndex = 2;
  List<Widget> PageList = const [
    SecondPage(),
    Text(
      'Sorry no like in your account',
      style: TextStyle(fontSize: 30),
    ),
    NextPage(),
    Text(
      'All setings are updated automatically',
      style: TextStyle(fontSize: 40),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColor.primaryColor,
        selectedItemColor: AppColor.teriteryColor,
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

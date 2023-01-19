import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DoctorApp(),
    );
  }
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/doc.jpg',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                // width: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 251, 250),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'atur janji dengan dokter baisa lebih mudah',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Dapatkan layanan untuk mengatur jadwal pemerikaas dengan mudah dan nyaman',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        height: 50,
                        width: 300,
                        child: ElevatedButton(
                          child: const Text('click'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigation()),
                            );
                          },
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 249, 247, 247),
          title: Text(
            'janji',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.tune,
                color: Colors.black,
              ),
            )
          ],
          bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 138, 104, 255),
              labelColor: Colors.black,
              unselectedLabelColor: Color.fromARGB(211, 213, 218, 220),
              tabs: [
                Tab(
                  text: 'Akan atang',
                ),
                Tab(
                  text: 'Selesai',
                )
              ]),
        ),
        body: TabBarView(
          children: [
            Column(children: <Widget>[
              Expanded(
                child: Container(
                  height: 400,
                  width: width,
                  color: Color.fromARGB(255, 200, 200, 202),
                  child: ListView(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/2.webp'),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dr.Sekala Sianta'),
                                            Text('Dokter Umum'),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              227, 228, 234, 235),
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Klinik Medika Keluarga'),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              'Senin, 9 Januri 2023',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                '08.00',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/3.webp'),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dr.Randi Pratama Sianta'),
                                            Text('Dokter Spesialis Sarai'),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              227, 228, 234, 235),
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Klinik Angkasa Indah'),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              'Rabu, 18 Januri 2023',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                '10.00',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/5.jpg'),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dr.Aksara Euroia'),
                                            Text('Dokter Anak'),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              227, 228, 234, 235),
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Klinik Ari Mentari'),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              'Rabu, 31 Januri 2023',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                '13.00',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/5.jpg'),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dr.Sekala Sianta'),
                                            Text('Dokter Umum'),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              227, 228, 234, 235),
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Klinik Medika Keluarga'),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              'Senin, 9 Januri 2023',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                '08.00',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage('assets/1.wjpg'),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Dr.Sekala Sianta'),
                                            Text('Dokter Umum'),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              227, 228, 234, 235),
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text('Klinik Medika Keluarga'),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              'Senin, 9 Januri 2023',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                '08.00',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ]),
                ),
              )
            ]),
            Container(
              child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/2.webp'),
                                    ),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr.Sekala Sianta'),
                                        Text('Dokter Umum'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.more_horiz),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(227, 228, 234, 235),
                                    ),
                                    //child: ,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Klinik Medika Keluarga'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(right: 90),
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 228, 226, 240),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Color.fromARGB(
                                              255, 138, 104, 255),
                                        ),
                                        Text(
                                          'Senin, 9 Januri 2023',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 228, 226, 240),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                          Text(
                                            '08.00',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/2.webp'),
                                    ),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr.Sekala Sianta'),
                                        Text('Dokter Umum'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.more_horiz),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(227, 228, 234, 235),
                                    ),
                                    //child: ,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Klinik Medika Keluarga'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(right: 90),
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 228, 226, 240),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Color.fromARGB(
                                              255, 138, 104, 255),
                                        ),
                                        Text(
                                          'Senin, 9 Januri 2023',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 228, 226, 240),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                          Text(
                                            '08.00',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/2.webp'),
                                    ),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr.Sekala Sianta'),
                                        Text('Dokter Umum'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.more_horiz),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(227, 228, 234, 235),
                                    ),
                                    //child: ,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Klinik Medika Keluarga'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(right: 90),
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 228, 226, 240),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Color.fromARGB(
                                              255, 138, 104, 255),
                                        ),
                                        Text(
                                          'Senin, 9 Januri 2023',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 228, 226, 240),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                          Text(
                                            '08.00',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/2.webp'),
                                    ),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr.Sekala Sianta'),
                                        Text('Dokter Umum'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.more_horiz),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(227, 228, 234, 235),
                                    ),
                                    //child: ,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Klinik Medika Keluarga'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(right: 90),
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 228, 226, 240),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Color.fromARGB(
                                              255, 138, 104, 255),
                                        ),
                                        Text(
                                          'Senin, 9 Januri 2023',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 228, 226, 240),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                          Text(
                                            '08.00',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage('assets/2.webp'),
                                    ),
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 70),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Dr.Sekala Sianta'),
                                        Text('Dokter Umum'),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Icon(Icons.more_horiz),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(227, 228, 234, 235),
                                    ),
                                    //child: ,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Klinik Medika Keluarga'),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    //margin: EdgeInsets.only(right: 90),
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color.fromARGB(255, 228, 226, 240),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Color.fromARGB(
                                              255, 138, 104, 255),
                                        ),
                                        Text(
                                          'Senin, 9 Januri 2023',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color:
                                            Color.fromARGB(255, 228, 226, 240),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.watch_later,
                                            color: Color.fromARGB(
                                                255, 138, 104, 255),
                                          ),
                                          Text(
                                            '08.00',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ))
                                ],
                              ),
                            )
                          ]),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 300,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/2.webp'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Selamat Pagi.'),
                            Text(
                              'Floyd Miles',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ]),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Bagaimana',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Kabarmu hari ini?',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 197, 196, 194),
                ),
                margin: EdgeInsets.only(left: 25),
                height: 40,
                // width: 50,
                child:TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              hintText: 'Enter a search term',
            ),
              ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // height: 50,
                      margin: EdgeInsets.only(left: 25),
                      child: Text('Pilih Layanan'),
                    ),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.pink,
                      child: SizedBox(
                        height: 300,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.all(12),
                          itemCount: 3,
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              width: 12,
                            );
                          },
                          itemBuilder: (context, index) {
                            return builCard(index);
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 30,

                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Janji Hari Ini'), Text('Lihat Semua')],
                ),
                // color: Colors.pink,
              ),
              Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/2.webp'),
                              ),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 70),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Dr.Sekala Sianta'),
                                  Text('Dokter Umum'),
                                ],
                              ),
                            ),
                            Container(
                              child: Icon(Icons.more_horiz),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(227, 228, 234, 235),
                              ),
                              //child: ,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on),
                            Text('Klinik Medika Keluarga'),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              //margin: EdgeInsets.only(right: 90),
                              height: 30,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color.fromARGB(255, 228, 226, 240),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Color.fromARGB(255, 138, 104, 255),
                                  ),
                                  Text(
                                    'Senin, 9 Januri 2023',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 138, 104, 255),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromARGB(255, 228, 226, 240),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.watch_later,
                                      color: Color.fromARGB(255, 138, 104, 255),
                                    ),
                                    Text(
                                      '08.00',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 138, 104, 255),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                      )
                    ]),
              ),
            ],
          ),
       
      ),),
    );
  }

  Widget builCard(int index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 129, 62, 195),
            ),
            child: Column(
              crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
              children: [
              Text('uat anji'),
              Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/9.jpg'),
                              ),),
              
            ]),
          )
        ],
      );
}

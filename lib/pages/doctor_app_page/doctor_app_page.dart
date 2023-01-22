import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';
import 'package:task2/bottom_navigation.dart';
import 'package:task2/styles/styles.dart';
class DoctorAppPage extends StatelessWidget {
  const DoctorAppPage({super.key});

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
                  color:AppColor.primaryColor,
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
                         style:TextStyle(color:TextColor.primaryColor)
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
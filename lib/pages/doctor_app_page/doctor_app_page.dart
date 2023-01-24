import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';
import 'package:task2/bottom_navigation.dart';
import 'package:task2/styles/styles.dart';
class DoctorAppPage extends StatelessWidget {
  const DoctorAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: <Widget>[
            Image.asset(
              'assets/doc.jpg',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                
                decoration: BoxDecoration(
                  color:AppColor.primaryColor,
                  borderRadius:BoxBorders.secondaryBoxBorder
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        Text(
                          'atur janji dengan dokter baisa lebih mudah',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                     
                        Text(
                          'Dapatkan layanan untuk mengatur jadwal pemerikaas dengan mudah dan nyaman',
                          textAlign: TextAlign.center,
                         style:TextStyle(color:TextColor.primaryColor)
                        ),
                   
                        ElevatedButton(
        
                          child: const Text('click'),
                          style:ElevatedButton.styleFrom(minimumSize:Size(350,50),),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavigation()),
                            );
                          },
                        ),
                    
                    ]),
              ),
            ),
          ],
        ),
      
    );
  }
}
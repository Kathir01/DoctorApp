import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';
import 'package:task2/bottom_navigation.dart';
import 'package:task2/common_widgets/common_widgets.dart';
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
                      CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Medika Keluarga',text3:'Senin, 9 Januri 2023',text4:'08.00',image:'assets/2.webp'),
                       CommonContainer(text:'Dr.Randi Pratama Sianta',text1:'Dokter Spesialis Sarai',text2:'Klinik Angkasa Indah',text3:'Rabu, 18 Januri 2023',text4:'10.00',image:'assets/3.webp'),
                       CommonContainer(text:'Dr.Aksara Euroia',text1:'Dokter Anak',text2:'Klinik Ari Mentari',text3:'Rabu, 31 Januri 2023',text4:'13.00',image:'assets/4.jpg'),
                       CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Medika Keluarga',text3:'Senin, 15 Januri 2023',text4:'14.00',image:'assets/1.jpg'),
                       CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Ari Keluarga',text3:'Rabu, 22 Januri 2023',text4:'12.00',image:'assets/2.webp'),
                      ]),
                ),
              )
            ]),
            Container( 
              color: Color.fromARGB(255, 200, 200, 202),
              child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Medika Keluarga',text3:'Senin, 9 Januri 2023',text4:'08.00',image:'assets/2.webp'),
                       CommonContainer(text:'Dr.Randi Pratama Sianta',text1:'Dokter Spesialis Sarai',text2:'Klinik Angkasa Indah',text3:'Rabu, 18 Januri 2023',text4:'10.00',image:'assets/3.webp'),
                       CommonContainer(text:'Dr.Aksara Euroia',text1:'Dokter Anak',text2:'Klinik Ari Mentari',text3:'Rabu, 31 Januri 2023',text4:'13.00',image:'assets/4.jpg'),
                       CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Medika Keluarga',text3:'Senin, 15 Januri 2023',text4:'14.00',image:'assets/1.jpg'),
                       CommonContainer(text:'Dr.Sekala Sianta',text1:'Dokter Umum',text2:'Klinik Ari Keluarga',text3:'Rabu, 22 Januri 2023',text4:'12.00',image:'assets/2.webp'),
                  
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
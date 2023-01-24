import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/common_widgets/common_widgets.dart';
import 'package:task2/models/doctor_detials/doctor_detials.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List<DoctorDetials> aboutDoctor = [
    DoctorDetials(
        image: 'assets/2.webp',
        name: 'Dr.Sekala Sianta',
        special: 'Dokter Umum',
        loctaion: 'Klinik Medika Keluarga',
        date: 'Senin, 9 Januri 2023',
        time: '08.00'),
    DoctorDetials(
        image: 'assets/3.webp',
        name: 'Dr.Randi Pratama Sianta',
        special: 'Dokter Spesialis Sarai',
        loctaion: 'Klinik Angkasa Indah',
        time: '10.00',
        date: 'Rabu, 18 Januri 2023'),
    DoctorDetials(
        image: 'assets/3.webp',
        name: 'Dr.Randi Pratama Sianta',
        special: 'Dokter Spesialis Sarai',
        loctaion: 'Klinik Angkasa Indah',
        time: '10.00',
        date: 'Rabu, 18 Januri 2023'),
    DoctorDetials(
        image: 'assets/3.webp',
        name: 'Dr.Randi Pratama Sianta',
        special: 'Dokter Spesialis Sarai',
        loctaion: 'Klinik Angkasa Indah',
        time: '10.00',
        date: 'Rabu, 18 Januri 2023'),
    DoctorDetials(
        image: 'assets/3.webp',
        name: 'Dr.Randi Pratama Sianta',
        special: 'Dokter Spesialis Sarai',
        loctaion: 'Klinik Angkasa Indah',
        time: '10.00',
        date: 'Rabu, 18 Januri 2023')
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
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
              indicatorColor: AppColor.teriteryColor,
              labelColor: Colors.black,
              unselectedLabelColor: TextColor.primaryColor,
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
            Container(
              width: width,
              color: AppColor.secondaryColor,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: aboutDoctor.length,
                itemBuilder: (BuildContext context, int index) {
                  return CommonContainer(
                      text: aboutDoctor[index].name,
                      text1: aboutDoctor[index].special,
                      text2: aboutDoctor[index].loctaion,
                      text3: aboutDoctor[index].date,
                      text4: aboutDoctor[index].time,
                      image: aboutDoctor[index].image);
                },
              ),
            ),
            Container(
              color: AppColor.secondaryColor,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: aboutDoctor.length,
                itemBuilder: (BuildContext context, int index) {
                  return CommonContainer(
                      text: aboutDoctor[index].name,
                      text1: aboutDoctor[index].special,
                      text2: aboutDoctor[index].loctaion,
                      text3: aboutDoctor[index].date,
                      text4: aboutDoctor[index].time,
                      image: aboutDoctor[index].image);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

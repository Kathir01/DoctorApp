import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/common_widgets/common_widgets.dart';
import 'package:task2/models/doctor_details/doctor_details.dart';

import '../../services/firebase_crud.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List<DoctorDetails> aboutDoctor = [];
  Query ref = FirebaseDatabase.instance.ref().child('doctordetials');
  @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  // getData() async {
  //   Map<String, dynamic> data = await DataService().fetch();
  //   data.forEach((key, value) {
  //     aboutDoctor.add(DoctorDetails(
  //         key: key,
  //         image: 'assets/5.jpg',
  //         name: value['name'],
  //         special: value['special'],
  //         loctaion: value['location'],
  //         time: value['Time'],
  //         date: value['Date']));
  //   });

  //   setState(() {});
  // }

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
              child: FirebaseAnimatedList(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                query: ref,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,
                    Animation<double> animation, int index) {
                  Map value = snapshot.value as Map;
                  return CommonContainer(
                      snapshotKey: snapshot.key!,
                      text: value['name'],
                      text1: value['special'],
                      text2: value['location'],
                      text3: value['Date'],
                      text4: value['Time'],
                      image: 'assets/5.jpg');
                },
              ),
            ),
            Container(
              color: AppColor.secondaryColor,
              child: FirebaseAnimatedList(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                query: ref,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,
                    Animation<double> animation, int index) {
                  Map value = snapshot.value as Map;
                  return CommonContainer(
                      snapshotKey: snapshot.key!,
                      text: value['name'],
                      text1: value['special'],
                      text2: value['location'],
                      text3: value['Date'],
                      text4: value['Time'],
                      image: 'assets/5.jpg');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

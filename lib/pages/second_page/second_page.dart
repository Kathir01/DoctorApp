import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:task2/common_widgets/common_widgets.dart';
import 'package:task2/pages/add_details_page/add_details_page.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/models/doctor_details/doctor_details.dart';

import '../../models/doctor_details/new_model.dart';
import '../../services/firebase_crud.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
    'hai',
    'complete',
    'book',
    'welcom',
  ];
  List<DoctorDetails> aboutDoctor = [];
  List<PilihLayanan> philihdetials = [
    PilihLayanan(
        color1: BoxColor.primaryColor,
        title: 'Buat Janji',
        image: 'assets/9.jpg'),
    PilihLayanan(
        color1: BoxColor.secondaryColor,
        title: 'Dokter',
        image: 'assets/8.webp'),
    PilihLayanan(
        color1: BoxColor.teriteryColor,
        title: 'Buat Janji',
        image: 'assets/9.jpg')
  ];
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
  //         image: 'assets/2.webp',
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, bottom: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/2.webp'),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Selamat Pagi.'),
                          Text(
                            'Floyd Miles',
                            style: TitleFonts.primaryText,
                          )
                        ]),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Bagaimana',
                    style: TitleFonts.secondaryText,
                  ),
                  Text(
                    'Kabarmu hari ini?',
                    style: TitleFonts.teritaryText,
                  )
                ],
              ),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return _kOptions.where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  debugPrint('You just selected $selection');
                },
                fieldViewBuilder: (BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted) {
                  return SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(8),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Enter a search term',
                        ),
                        controller: textEditingController,
                        focusNode: focusNode,
                        onSubmitted: (String value) {},
                      ));
                },
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Pilih Layanan'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: philihdetials.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CommonRow(
                              image: philihdetials[index].image,
                              text: philihdetials[index].title,
                              color: philihdetials[index].color1);
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Janji Hari Ini'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Lihat Semua'),
                        CircleAvatar(
                          backgroundColor: AppColor.teriteryColor,
                          radius: 20,
                          child: IconButton(
                            enableFeedback: false,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddDetails(
                                          updatekey: "",
                                        )),
                              );
                            },
                            icon: Icon(
                              Icons.add,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              FirebaseAnimatedList(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                query: ref,
                itemBuilder: (BuildContext context, DataSnapshot snapshot,
                    Animation<double> animation, int index) {
                  print(snapshot.value);
                  Map value = snapshot.value as Map;
                  print(value['Date']);
                  return CommonContainer(
                      snapshotKey: snapshot.key!,
                      text: value['name'],
                      text1: value['special'],
                      text2: value['location'],
                      text3: value['Date'],
                      text4: value['Time'],
                      image: 'assets/2.webp');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

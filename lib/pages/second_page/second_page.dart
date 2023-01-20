import 'package:flutter/material.dart';
import 'package:task2/pages/pages.dart';
import 'package:task2/bottom_navigation.dart';
import 'package:task2/common_widgets/common_widgets.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:SafeArea(
        child: Expanded(
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
              // Container(
              //   decoration: BoxDecoration(
              //     // borderRadius: BorderRadius.circular(10),
              //     color: Color.fromARGB(255, 197, 196, 194),
              //   ),
              //   margin: EdgeInsets.only(left: 25),
              //   height: 40,
              //   // width: 50,
              //   child:
              //  TextField(
              
              //     decoration: InputDecoration(
              //       border: OutlineInputBorder(),
              //       prefixIcon: Icon(Icons.search),
              //       hintText: 'Enter a search term',
              //     ),
              //   //),
              // ),
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
                           fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
        FocusNode focusNode,
        VoidCallback onFieldSubmitted) {
          return SizedBox(
            width:350,
            child:TextField(
            decoration: InputDecoration(
               border: OutlineInputBorder(), 
                contentPadding: EdgeInsets.all(8),
               prefixIcon: Icon(Icons.search),
               hintText: 'Enter a search term',
            ),
            controller: textEditingController,
            focusNode: focusNode,
            onSubmitted: (String value) {
            
            },));},
                        ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                     // height: 50,
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Pilih Layanan'),
                    ),
                    Container(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 150,
               child:Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                             Text('Buat Janji'),
                              SizedBox(
                                width:50,
                               child:Image.asset( 'assets/9.jpg'),
                              ),

                    ])),
                 margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(150, 107, 72, 250),
                        ),
              ),
              Container(
                width: 150,
                child:Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                             Text('Dokter'),
                              SizedBox(
                                width:50,
                               child:Image.asset( 'assets/8.webp'),
                              ),

                    ])),
                 margin: EdgeInsets.all(8),
                 decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(253, 254, 128, 103),
                        ),
               
              ),
              Container(
                width: 150,
               
                   child:Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                             Text('hagshg'),
                              SizedBox(
                                width:50,
                               child:Image.asset( 'assets/9.jpg'),
                              ),

                    ])),
                 margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(190, 194, 136, 248),
                        ),
              
              ),
              // Container(
              //   width: 150,
                
              //    margin: EdgeInsets.all(8),
              //    decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: Colors.blue,
              //           ),
              // ),
            ],
          ),),
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
                height: 500,
                width: 400,
                // color: Color.fromARGB(255, 200, 200, 202),
                child: ListView(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CommonContainer(
                          text: 'Dr.Sekala Sianta',
                          text1: 'Dokter Umum',
                          text2: 'Klinik Medika Keluarga',
                          text3: 'Senin, 9 Januri 2023',
                          text4: '08.00',
                          image: 'assets/2.webp'),
                      CommonContainer(
                          text: 'Dr.Randi Pratama Sianta',
                          text1: 'Dokter Spesialis Sarai',
                          text2: 'Klinik Angkasa Indah',
                          text3: 'Rabu, 18 Januri 2023',
                          text4: '10.00',
                          image: 'assets/3.webp'),
                      CommonContainer(
                          text: 'Dr.Aksara Euroia',
                          text1: 'Dokter Anak',
                          text2: 'Klinik Ari Mentari',
                          text3: 'Rabu, 31 Januri 2023',
                          text4: '13.00',
                          image: 'assets/4.jpg'),
                      CommonContainer(
                          text: 'Dr.Sekala Sianta',
                          text1: 'Dokter Umum',
                          text2: 'Klinik Medika Keluarga',
                          text3: 'Senin, 15 Januri 2023',
                          text4: '14.00',
                          image: 'assets/1.jpg'),
                      CommonContainer(
                          text: 'Dr.Sekala Sianta',
                          text1: 'Dokter Umum',
                          text2: 'Klinik Ari Keluarga',
                          text3: 'Rabu, 22 Januri 2023',
                          text4: '12.00',
                          image: 'assets/2.webp'),
                    ]),
              ),
            ],
          ),
        ),
      ),),
    );
  }
}

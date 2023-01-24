import 'package:flutter/material.dart';
import 'package:task2/common_widgets/common_widgets.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/models/doctor_detials/doctor_detials.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 100,
                width: 300,
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
              //),
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
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('Janji Hari Ini'), Text('Lihat Semua')],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
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
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

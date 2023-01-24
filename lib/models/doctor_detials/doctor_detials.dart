import 'dart:ui';

class DoctorDetials {
  String image;
  String name;
  String special;
  String loctaion;
  String time;
  String date;
  DoctorDetials(
      {required this.image,
      required this.name,
      required this.special,
      required this.loctaion,
      required this.time,
      required this.date});
}

class PilihLayanan {
  String image;
  String title;
  Color color1;
  PilihLayanan(
      {required this.color1, required this.title, required this.image});
}

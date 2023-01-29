// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ui';

class DoctorDetails {
  String image;
  String name;
  String special;
  String loctaion;
  String time;
  String date;
  String key;
  DoctorDetails({
    required this.image,
    required this.name,
    required this.special,
    required this.loctaion,
    required this.time,
    required this.date,
    required this.key,
  });

  DoctorDetails copyWith({
    String? image,
    String? name,
    String? special,
    String? loctaion,
    String? time,
    String? date,
    String? key,
  }) {
    return DoctorDetails(
      image: image ?? this.image,
      name: name ?? this.name,
      special: special ?? this.special,
      loctaion: loctaion ?? this.loctaion,
      time: time ?? this.time,
      date: date ?? this.date,
      key: key ?? this.key,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'image': image,
      'name': name,
      'special': special,
      'loctaion': loctaion,
      'time': time,
      'date': date,
      'key': key,
    };
  }

  factory DoctorDetails.fromMap(Map<String, dynamic> map) {
    return DoctorDetails(
      image: map['image'] as String,
      name: map['name'] as String,
      special: map['special'] as String,
      loctaion: map['loctaion'] as String,
      time: map['time'] as String,
      date: map['date'] as String,
      key: map['key'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DoctorDetails.fromJson(String source) =>
      DoctorDetails.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DoctorDetails(image: $image, name: $name, special: $special, loctaion: $loctaion, time: $time, date: $date, key: $key)';
  }

  @override
  bool operator ==(covariant DoctorDetails other) {
    if (identical(this, other)) return true;

    return other.image == image &&
        other.name == name &&
        other.special == special &&
        other.loctaion == loctaion &&
        other.time == time &&
        other.date == date &&
        other.key == key;
  }

  @override
  int get hashCode {
    return image.hashCode ^
        name.hashCode ^
        special.hashCode ^
        loctaion.hashCode ^
        time.hashCode ^
        date.hashCode ^
        key.hashCode;
  }
}

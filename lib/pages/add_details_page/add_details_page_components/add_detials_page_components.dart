import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class CommonForm extends StatelessWidget {
  CommonForm(
      {required this.text,
      required this.textHint,
      required this.userController});

  final String text;
  final String textHint;

  final TextEditingController userController;
  // final userSpecialController = TextEditingController();
  // final userLoctionController = TextEditingController();
  // final userDateController = TextEditingController();
  // final userTimeController = TextEditingController();
  late DatabaseReference ref;

  @override
  // void initState() {
  //   super.initState();
  //   ref = FirebaseDatabase.instance.ref().child('doctordetials');
  // }

  Widget build(BuildContext context) {
    return TextField(
      controller: userController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(), label: Text(text), hintText: textHint),
    );
  }
}

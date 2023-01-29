import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/pages/add_details_page/add_details_page_components/add_detials_page_components.dart';

import '../../bottom_navigation.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({Key? key}) : super(key: key);

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  final userNameController = TextEditingController();
  final userSpecialController = TextEditingController();
  final userLocationController = TextEditingController();
  final userDateController = TextEditingController();
  final userTimeController = TextEditingController();
  late DatabaseReference dref;

  @override
  void initState() {
    super.initState();
    dref = FirebaseDatabase.instance.ref().child('doctordetials');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
          elevation: 0,
          title: Text(
            'Add Your Information',
            style: TitleFonts.primaryText,
          ),
        ),
        body: SingleChildScrollView(
          //physics: AlwaysScrollableScrollPhysics(),
          child: Column(children: [
            CommonForm(
                text: 'Name',
                textHint: 'enter name',
                userController: userNameController),
            const SizedBox(
              height: 20,
            ),
            CommonForm(
                text: 'Special',
                textHint: 'enter specialist',
                userController: userSpecialController),
            const SizedBox(
              height: 20,
            ),
            CommonForm(
                text: 'Location',
                textHint: 'enter location',
                userController: userLocationController),
            const SizedBox(
              height: 20,
            ),
            CommonForm(
                text: 'Date',
                textHint: 'enter date',
                userController: userDateController),
            const SizedBox(
              height: 20,
            ),
            CommonForm(
                text: 'Time',
                textHint: 'enter time',
                userController: userTimeController),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: (() {
                  Map<String, String> students = {
                    'name': userNameController.text,
                    'special': userSpecialController.text,
                    'location': userLocationController.text,
                    'Date': userDateController.text,
                    'Time': userTimeController.text
                  };
                  dref.push().set(students);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                }),
                child: Text('Submit')),
          ]),
        ),
      ),
    );
  }
}

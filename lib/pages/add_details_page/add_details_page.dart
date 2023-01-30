import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';
import 'package:task2/pages/add_details_page/add_details_page_components/add_detials_page_components.dart';

import '../../bottom_navigation.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({required this.updatekey});
  final String updatekey;

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
    if (widget.updatekey != "") {
      print('inside update');
      dref.child(widget.updatekey).once().then((value) {
        print(value);
        DataSnapshot event = value.snapshot;
        Map doctors = event.value as Map;
        print(doctors);
        userNameController.text = doctors['name'];
        userSpecialController.text = doctors['special'];
        userLocationController.text = doctors['location'];
        userDateController.text = doctors['Date'];
        userTimeController.text = doctors['Time'];
      });
    }
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
                  if (widget.updatekey == "") {
                    Map<String, String> doctors = {
                      'name': userNameController.text,
                      'special': userSpecialController.text,
                      'location': userLocationController.text,
                      'Date': userDateController.text,
                      'Time': userTimeController.text
                    };
                    dref.push().set(doctors);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()),
                    );
                  } else {
                    Map<String, String> doctors = {
                      'name': userNameController.text,
                      'special': userSpecialController.text,
                      'location': userLocationController.text,
                      'Date': userDateController.text,
                      'Time': userTimeController.text
                    };

                    dref.child(widget.updatekey).update(doctors);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()),
                    );
                  }
                }),
                child: Text('Submit')),
          ]),
        ),
      ),
    );
  }
}

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:task2/models/doctor_details/doctor_details.dart';
import 'package:task2/pages/add_details_page/add_details_page.dart';
import 'package:task2/styles/styles.dart';

class CommonContainer extends StatefulWidget {
  CommonContainer({
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.image,
    required this.snapshotKey,
  });
  @override
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image;
  final String snapshotKey;

  @override
  State<CommonContainer> createState() => _CommonContainerState();
}

class _CommonContainerState extends State<CommonContainer> {
  final ref = FirebaseDatabase.instance.ref().child('doctordetials');

  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height / 4,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BoxBorders.primaryBoxBorder),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(widget.image),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.text),
                  Text(
                    widget.text1,
                    style: const TextStyle(
                      color: TextColor.primaryColor,
                    ),
                  ),
                ],
              ),
              Container(
                child: PopupMenuButton(
                  icon: Icon(Icons.more_horiz),
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      value: 'Delete',
                      child: Text('Delete'),
                      onTap: () {
                        _deletedata(widget.snapshotKey);
                      },
                    ),
                    PopupMenuItem(
                      value: 'Update',
                      child: Text('Update'),
                      onTap: () {
                        Future.delayed(Duration(seconds: 1), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddDetails(
                                        updatekey: widget.snapshotKey,
                                      )));
                        });
                      },
                    )
                  ],
                ),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BoxBorders.teritaryBoxBorder,
                  color: AppColor.secondaryColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on),
                Text(widget.text2),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 25,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BoxBorders.teritaryBoxBorder,
                  color: BoxColor.quarteryColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: TextColor.secondaryColor,
                    ),
                    Text(
                      widget.text3,
                      style: TextStyle(
                        color: TextColor.secondaryColor,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 25,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BoxBorders.teritaryBoxBorder,
                    color: BoxColor.quarteryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later,
                        color: TextColor.secondaryColor,
                      ),
                      Text(
                        widget.text4,
                        style: TextStyle(
                          color: TextColor.secondaryColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ))
            ],
          ),
        ]));
  }

  _deletedata(String key) async {
    await ref.child(key).remove();
  }
}

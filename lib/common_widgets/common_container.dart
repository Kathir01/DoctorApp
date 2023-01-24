import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';

class CommonContainer extends StatelessWidget {
  CommonContainer(
      {required this.text,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.image});
  @override
  final String text;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image;
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
              backgroundImage: AssetImage(image),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                Text(
                  text1,
                  style: TextStyle(
                    color: TextColor.primaryColor,
                  ),
                ),
              ],
            ),
            Container(
              child: Icon(Icons.more_horiz),
              height: 30,
              width: 30,
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
              Text(text2),
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
                    text3,
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
                      text4,
                      style: TextStyle(
                        color: TextColor.secondaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ))
          ],
        ),
      ]),
    );
  }
}

 import 'package:flutter/material.dart';
 import 'package:task2/styles/styles.dart';                

class CommonContainer extends StatelessWidget {
CommonContainer({required this.text,required this.text1,required this.text2,required this.text3,
required this.text4,required this.image});
@override
   //final Color color;
    final String text;
    final String text1;
    final String text2;
    final String text3;
    final String text4;
    final String image;
Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                              color:AppColor.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage(image),
                                        ),
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 70),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(text),
                                            Text(text1, style: TextStyle(
                                                color: TextColor.primaryColor,
                                              ),),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.more_horiz),
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: AppColor.secondaryColor,
                                        ),
                                        //child: ,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(text2),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        //margin: EdgeInsets.only(right: 90),
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Color.fromARGB(
                                              255, 228, 226, 240),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              color: Color.fromARGB(
                                                  255, 138, 104, 255),
                                            ),
                                            Text(
                                              text3,
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Color.fromARGB(
                                                255, 228, 226, 240),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.watch_later,
                                                color: Color.fromARGB(
                                                    255, 138, 104, 255),
                                              ),
                                              Text(
                                                text4,
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 138, 104, 255),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                )
                              ]),
                        );
  }
}

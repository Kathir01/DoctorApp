 import 'package:flutter/material.dart';
 import 'package:task2/styles/styles.dart';
class CommonRow extends StatelessWidget {
CommonRow({required this.image,required this.text,required this.color});
@override
   //final Color color;
    final String text;
    // final String text1;
    // final String text2;
    // final String text3;
    final color;
    final String image;
Widget build(BuildContext context) {
    return Container(
                width: 150,
               child:Center(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                             Text(text),
                              SizedBox(
                                width:50,
                               child:Image.asset(image),
                              ),

                    ])),
                 margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:color,
                        ), 
              );}}

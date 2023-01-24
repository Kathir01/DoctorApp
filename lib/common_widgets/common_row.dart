import 'package:flutter/material.dart';
import 'package:task2/styles/styles.dart';

class CommonRow extends StatelessWidget {
  CommonRow({required this.image, required this.text, required this.color});
  @override
  final String text;

  final Color color;
  final String image;
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BoxBorders.primaryBoxBorder,
        color: color,
      ),
      child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
            Text(text),
            SizedBox(
              width: 50,
              child: Image.asset(image),
            ),
          ])),
    );
  }
}

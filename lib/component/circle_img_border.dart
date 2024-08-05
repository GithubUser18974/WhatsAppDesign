import 'package:flutter/material.dart';

class circle_img_border extends StatelessWidget {
  circle_img_border(this.pathName) {}
  final String pathName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 7,
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 28,
          backgroundImage: Image.asset('assets/$pathName.jpeg').image,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_name/component/circle_img_border.dart';

class circle_named_button extends StatelessWidget {
  circle_named_button(this.imgPathName, this.avatarName) {}
  final String imgPathName;
  final String avatarName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        circle_img_border(imgPathName),
        SizedBox(
          height: 5,
        ),
        Text(
          avatarName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

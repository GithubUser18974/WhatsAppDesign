import 'package:flutter/material.dart';
import 'package:project_name/component/circle_img_border.dart';

class chat_index extends StatelessWidget {
  chat_index(this.pathName, this.avatarName, this.avatarMSG) {}
  final String pathName;
  final String avatarName;
  final String avatarMSG;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5,
        left: 5,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  circle_img_border(pathName),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        avatarName,
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        avatarMSG,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: 25,
                  top: 5,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '20:22',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.tealAccent,
                      child: Text(
                        '11',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Divider(
            indent: 60,
          ),
        ],
      ),
    );
  }
}

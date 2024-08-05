import 'package:flutter/material.dart';

class text_category_style extends StatelessWidget {
  text_category_style(this.categoryName, this.colour) {}
  final String categoryName;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          categoryName,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: colour),
        ));
  }
}

import 'package:flutter/material.dart';

class side_menu_search extends StatelessWidget {
  const side_menu_search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.white,
        )
      ],
    );
  }
}

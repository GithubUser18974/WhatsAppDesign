import 'package:flutter/material.dart';
import 'package:project_name/component/chat_index.dart';
import 'package:project_name/component/circle_named_button.dart';
import 'package:project_name/component/side_menu_search.dart';
import 'package:project_name/component/text_category_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF171717),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Mohamed Araby 😀',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xFF171717),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  side_menu_search(), //Responsible for creating top search row
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        text_category_style("Messages", Colors.white),
                        text_category_style("Online", Colors.grey),
                        text_category_style("Groups", Colors.grey),
                        text_category_style("Channels", Colors.grey),
                        text_category_style("More", Colors.grey),
                        text_category_style("Favourites", Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: Container(
                  height: 220,
                  decoration: const BoxDecoration(
                    color: Color(0xFF27C1a9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        (40),
                      ),
                      topRight: Radius.circular(
                        (40),
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                          left: 25,
                          right: 25,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Favourite Contacts',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                        child: SizedBox(
                          height: 90,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              circle_named_button('img1', 'Norhan'),
                              circle_named_button('img2', 'July'),
                              circle_named_button('img3', 'Mikle'),
                              circle_named_button('img4', 'Kler'),
                              circle_named_button('img5', 'Moane'),
                              circle_named_button('img6', 'Julie'),
                              circle_named_button('img7', 'Allen'),
                              circle_named_button('img8', 'John'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 335,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Color(0xFFEFFFFC),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    children: [
                      chat_index('img1', 'Norhan', 'am good what about you ?'),
                      chat_index('img8', 'John', 'Where are you?'),
                      chat_index('img7', 'Allen', 'Great'),
                      chat_index('img6', 'Julie', 'am good what about you ?'),
                      chat_index('img5', 'Kler', 'Hello ?'),
                      chat_index('img4', 'Araby', 'Long time no see'),
                      chat_index('img3', 'MOHAMED', 'Add it to schedule '),
                      chat_index('img2', 'Abdou', 'the task was fun'),
                      chat_index('img1', 'Ahmed', 'love this task'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

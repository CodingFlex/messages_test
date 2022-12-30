// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/message_model.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Groups'];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        height: 90,
        color: Theme.of(context).primaryColor,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            final chat = chats[index];
            return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 30.0,
                  ),
                  child: Container(
                    decoration: index == selectedIndex
                        ? BoxDecoration(
                            border: Border(
                            bottom: BorderSide(
                              color: Colors.blueGrey,
                              width: 3,
                            ),
                          ))
                        : BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 0.0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.circle_notifications_sharp,
                            color: Theme.of(context).primaryColorDark,
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}

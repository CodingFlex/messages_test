// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:messages_test/models/message_model.dart';

import '../screens/chat_screen.dart';

class SearchUsers extends StatelessWidget {
  const SearchUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.blueGrey,
                    ),
                    iconSize: 30.0,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 370,
              height: 40,
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Theme.of(context).primaryColorLight,
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.blueGrey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintStyle: TextStyle(fontSize: 14, color: Colors.blueGrey),
                    hintText: "Search users"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

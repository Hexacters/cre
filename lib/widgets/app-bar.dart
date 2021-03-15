import 'package:flutter/material.dart';

AppBar header({String title, int selectedIcon = 0, BuildContext context}) {
  return AppBar(
    leading: IconButton(
      color: Colors.black,
      icon: Icon(selectedIcon == 1 ? Icons.menu_open : Icons.menu),
      onPressed: () {
        Navigator.pushNamed(context, '/landing');
      },
    ),
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    actions: <Widget>[
      IconButton(
        color: Colors.black,
        icon: Icon(
            selectedIcon == 2 ? Icons.notifications : Icons.notifications_none),
        onPressed: () {
          Navigator.pushNamed(context, '/notification');
        },
      ),
      IconButton(
          color: Colors.black,
          icon: Icon(selectedIcon == 3
              ? Icons.account_circle
              : Icons.account_circle_outlined),
          onPressed: () {
            print('ji');
          }),
    ],
    backgroundColor: Colors.white,
  );
}

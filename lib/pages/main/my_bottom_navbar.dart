import 'package:flutter/material.dart';

class MyBottomItem extends BottomNavigationBarItem{
  MyBottomItem(IconData iconName, String title)
      : super(
            icon: Icon(iconName),
            title: Text(title),
            activeIcon: Icon(
              iconName,
              color: Colors.blue,
              size: 30,
            ));
}


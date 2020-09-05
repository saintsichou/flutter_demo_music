import 'package:flutter/material.dart';
import 'my_bottom_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currt = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currt,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currt,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          items: items,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currt = index;
            });
          },
        ));
  }
}

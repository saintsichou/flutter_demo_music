import 'package:flutter/material.dart';

class GroupContent extends StatefulWidget {
  GroupContent({Key key}) : super(key: key);

  @override
  _GroupContentState createState() => _GroupContentState();
}

class _GroupContentState extends State<GroupContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('小组'),
    );
  }
}
import 'package:douban/pages/group/group_content.dart';
import 'package:flutter/material.dart';
class GroupPage extends StatelessWidget {
  const GroupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('小组'),),
      body: GroupContent(),
    );
  }
}
import 'package:douban/pages/group/group.dart';
import 'package:douban/pages/home/home.dart';
import 'package:douban/pages/home/music_play.dart';
import 'package:flutter/material.dart';
import 'package:douban/widget/CustomIcon.dart';
import 'my_bottom_navbar.dart';

List<MyBottomItem> items = [
  MyBottomItem(CustomIcon.home, '首页'),
  MyBottomItem(CustomIcon.music, '书影音'),
  MyBottomItem(CustomIcon.group, '小组'),
  MyBottomItem(CustomIcon.subject, '市集'),
  MyBottomItem(CustomIcon.profile, '我的'),
];

List<Widget> pages = [
  HomePage(),
  GroupPage(),
  // AudioPlaybackPage(),
];

import 'package:flutter/material.dart';

class CustomIcon {
  static const IconData home = const IconData(//shouye为图标的名称
      0xe69e,//代表的是该图标的代码
      fontFamily: 'MyIcon',//就是我们刚才在pubspec.yaml中设置的字体名称，记得对应上就好
      matchTextDirection: true
  );
  static const IconData music = const IconData(//fenlei为图标名称
      0xe6a3,//代表的是该图标的代码
      fontFamily: 'MyIcon',
      matchTextDirection: true
  );
  static const IconData group = const IconData(//fenlei为图标名称
      0xe6ef,//代表的是该图标的代码
      fontFamily: 'MyIcon',
      matchTextDirection: true
  );
  static const IconData subject = const IconData(//fenlei为图标名称
      0xe699,//代表的是该图标的代码
      fontFamily: 'MyIcon',
      matchTextDirection: true
  );
  static const IconData profile = const IconData(//fenlei为图标名称
      0xe6a2,//代表的是该图标的代码
      fontFamily: 'MyIcon',
      matchTextDirection: true
  );
}
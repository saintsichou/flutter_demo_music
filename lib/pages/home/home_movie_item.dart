import 'package:douban/model/home_model.dart';
import 'package:douban/widget/dash_line.dart';
import 'package:douban/widget/img_replace.dart';
import 'package:flutter/material.dart';

import 'music_play.dart';

class MovieItem extends StatelessWidget {
  final Movie movie;
  MovieItem(this.movie);

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   leading: Image.network("${movie.album.picUrl}"),
    //   title: Text('${movie.name}'),
    //   subtitle: Text('${movie.album.name}'),
    // );
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: Colors.grey))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[buildContent(context)],
      ),
    );
  }

  //内容
  Widget buildContent(context) {
    return GestureDetector(
      onTap: () {
        print(movie.url);
        final url = movie.url;
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          return AudioPlaybackPage(url);
        }));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildImg(),
          SizedBox(width: 8),
          buildInfo(),
          SizedBox(width: 8),
          buildLine(),
          SizedBox(width: 8),
          bulidListen()
        ],
      ),
    );
  }

  //内容图片
  Widget buildImg() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ImageReplace(
          url: movie.album.picUrl,
          h: 120,
        ));
    // Image.network(
    //   movie.album.picUrl,
    //   height: 120,
    // ) ??
    // Image.asset(
    //   'assets/images/go.png',
    //   height: 120,
    // ));
  }

  //内容信息
  Widget buildInfo() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildTitle(),
        SizedBox(
          height: 8,
        ),
        Text(
          "专辑名称:<${movie.album.name}>",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ));
  }

  //内容标题
  Widget buildTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.music_note,
          color: Colors.redAccent,
          size: 14,
        ),
        Expanded(
            child: Text(
          movie.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.clip,
        ))
      ],
    );
  }

  Widget buildLine() {
    return Container(
      height: 100,
      child: MyDashLine(
        axis: Axis.vertical,
        dashHeight: 6,
        dashWidth: .5,
        count: 10,
        color: Colors.grey,
      ),
    );
  }

  Widget bulidListen() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 28,
        ),
        Icon(
          Icons.favorite,
          size: 26,
          color: Colors.red,
        ),
        Text('想听')
      ],
    );
  }
}

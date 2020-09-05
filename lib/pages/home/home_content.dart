import 'package:douban/http/home_api.dart';
import 'package:douban/model/home_model.dart';
import 'package:flutter/material.dart';

import 'home_movie_item.dart';

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<Movie> movies = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeApi.requestMovieList().then((res) {
      print(res);
      setState(() {
        movies.addAll(res);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext ctx, int index) {
          return MovieItem(movies[index]);
        });
  }

  void requestMovieList() {}
}

import 'package:douban/http/http_request.dart';
import 'package:douban/model/home_model.dart';

class homeApi {
  static Future<List<Movie>> requestMovieList() async {
    final moveUrl =
        'http://api.migu.jsososo.com/search?keyword=%E5%91%A8%E6%9D%B0%E4%BC%A6';
    // 'http://liyichuan.top/api/wp-json/wp/v2/posts';
    final result = await HttpRequest.request(moveUrl);
    final subject = result['data']['list'];

    List<Movie> movies = [];
    for (var item in subject) {
      movies.add(Movie.fromJson(item));
    }
    return movies;
  }
}

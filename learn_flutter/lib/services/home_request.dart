import 'config.dart';
import 'http_request.dart';

class HomeRequest {
  static void requestMovieRequest(int start) async {
    // 1.构建URL
    final movieURL =
        "/Showtime/LocationMovies.api?locationId=561";

    // 2.发送网络请求获取结果
    final result = await HttpRequest.request(movieURL);
    final subjects = result["ms"];
    // 3.将Map转成Model
    print(subjects);
  }
}

/*
*
*
* 时光网热映电影：
https://api-m.mtime.cn/Showtime/LocationMovies.api?locationId=561

时光网即将上映电影:
https://api-m.mtime.cn/Movie/MovieComingNew.api?locationId=561

获取电影详情:
https://ticket-api-m.mtime.cn/movie/detail.api?locationId=561?movieId=电影id
*
* */
class HttpConfig {
  static const String baseURL = "https://api-m.mtime.cn";
  static const int timeout = 5000;


}

class HomeConfig {
  static const int movieCount = 20;
}
import 'package:news/core/constants/base_url.dart';

class NewsEndPoints {
  static const String getNews = "${NewsBaseUlrs.baseUrl}/news";
  static const String likeNews = "${NewsBaseUlrs.baseUrl}/news/favorite";
  static const String viewNews = "${NewsBaseUlrs.baseUrl}/news";
}

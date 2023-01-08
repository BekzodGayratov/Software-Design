import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';
import 'package:news/core/config/dio_cache_config.dart';
import 'package:news/core/config/dio_config.dart';
import 'package:news/core/constants/end_points.dart';

class LikeNewsService {
  static void likeNews(String id) async {
    try {
      Response response = await DioConfig.createRequest().put(
        "${NewsEndPoints.likeNews}/$id",
      );
      if (response.statusCode == 200) {
      } else {}
    } on DioError catch (e) {
      debugPrint(e.toString());
    }
  }
}

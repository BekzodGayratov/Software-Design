import 'package:dio/dio.dart';
import 'package:news/core/config/dio_cache_config.dart';
import 'package:news/core/config/dio_config.dart';
import 'package:news/core/constants/end_points.dart';
import 'package:news/data/model/news_model.dart';

class GetNewsService {
  Future<dynamic> getNews() async {
    try {
      Response response = await DioConfig.createRequest().get(
        NewsEndPoints.getNews,
      );
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        return "${response.statusCode} ${response.statusMessage.toString()}";
      }
    } on DioError catch (e) {
      return DioHandleCatchError.handlerCatchError(e);
    }
  }
}

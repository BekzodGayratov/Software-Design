import 'dart:io';
import 'package:hive/hive.dart';
import 'package:news/data/model/news_model.dart';
import 'package:news/data/service/get_news_service.dart';
import 'package:path_provider/path_provider.dart';

class NewsRepository {
  GetNewsService newsService = GetNewsService();

  Box<NewsData>? newsBox;

  Future<dynamic> getNews() async {
    return await newsService.getNews().then((dynamic response) async {
      if (response is NewsModel) {
        await openBox();
        await putToBox(response);
        return newsBox;
      } else {
        return response;
      }
    });
  }

  Future<void> openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    newsBox = await Hive.openBox<NewsData>("news");
  }

  void registerAdapters() async {
    Hive.registerAdapter(NewsModelAdapter());
    Hive.registerAdapter(NewsDataAdapter());
    Hive.registerAdapter(NewsDetailsAdapter());
  }

  Future<void> putToBox(NewsModel data) async {
    await newsBox!.clear();
    for (NewsData element in data.data!) {
      await newsBox!.add(element);
    }
  }
}

import 'package:hive/hive.dart';

part 'news_model.g.dart';

@HiveType(typeId: 0)
class NewsModel {
  @HiveField(0)
  bool? status;
   @HiveField(1)
  List<NewsData>? data;
   @HiveField(2)
  String? message;

  NewsModel({this.status, this.data, this.message});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <NewsData>[];
      json['data'].forEach((v) {
        data!.add(NewsData.fromJson(v));
      });
    }
    message = json['message'];
  }
}

@HiveType(typeId: 1)
class NewsData {
  @HiveField(0)
  NewsDetails? details;
   @HiveField(1)
  String? sId;
   @HiveField(2)
  String? title;
   @HiveField(3)
  String? subtitle;
   @HiveField(4)
  String? img;
   @HiveField(5)
  String? createdAt;
   @HiveField(6)
  int? iV;

  NewsData(
      {this.details,
      this.sId,
      this.title,
      this.subtitle,
      this.img,
      this.createdAt,
      this.iV});

  NewsData.fromJson(Map<String, dynamic> json) {
    details =
        json['details'] != null ?  NewsDetails.fromJson(json['details']) : null;
    sId = json['_id'];
    title = json['title'];
    subtitle = json['subtitle'];
    img = json['img'];
    createdAt = json['created_at'];
    iV = json['__v'];
  }
}

@HiveType(typeId: 2)
class NewsDetails {
   @HiveField(0)
  int? views;
   @HiveField(1)
  int? likes;

  NewsDetails({this.views, this.likes});

  NewsDetails.fromJson(Map<String, dynamic> json) {
    views = json['views'];
    likes = json['likes'];
  }
}

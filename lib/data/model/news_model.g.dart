// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsModelAdapter extends TypeAdapter<NewsModel> {
  @override
  final int typeId = 0;

  @override
  NewsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsModel(
      status: fields[0] as bool?,
      data: (fields[1] as List?)?.cast<NewsData>(),
      message: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NewsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.status)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NewsDataAdapter extends TypeAdapter<NewsData> {
  @override
  final int typeId = 1;

  @override
  NewsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsData(
      details: fields[0] as NewsDetails?,
      sId: fields[1] as String?,
      title: fields[2] as String?,
      subtitle: fields[3] as String?,
      img: fields[4] as String?,
      createdAt: fields[5] as String?,
      iV: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, NewsData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.details)
      ..writeByte(1)
      ..write(obj.sId)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.subtitle)
      ..writeByte(4)
      ..write(obj.img)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.iV);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NewsDetailsAdapter extends TypeAdapter<NewsDetails> {
  @override
  final int typeId = 2;

  @override
  NewsDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsDetails(
      views: fields[0] as int?,
      likes: fields[1] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, NewsDetails obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.views)
      ..writeByte(1)
      ..write(obj.likes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

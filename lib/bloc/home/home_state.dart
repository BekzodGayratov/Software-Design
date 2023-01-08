import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:hive/hive.dart';
import 'package:news/data/model/news_model.dart';
import 'package:news/data/repository/news_respositor.dart';

part 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {
  const HomeInitialState();
}

class HomeLoadingState extends HomeState {
  const HomeLoadingState();
}

class HomeCompleteState extends HomeState {
  final Box<NewsData> data;
  const HomeCompleteState(this.data);
}

class HomeErrorState extends HomeState {
  final String error;
  const HomeErrorState(this.error);
}

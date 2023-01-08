import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news/data/service/like_news_service.dart';
import 'package:news/data/service/view_news_service.dart';

part 'info_cubit.dart';

abstract class InfoState extends Equatable {
  const InfoState();
  @override
  List<Object?> get props => [];
}

class InfoInitialState extends InfoState {
  const InfoInitialState();
}

class InfoLoadingState extends InfoState {
  const InfoLoadingState();
}

class InfoCompleteState extends InfoState {
  const InfoCompleteState();
}

class InfoErrorState extends InfoState {
  String error;
  InfoErrorState(this.error);
}

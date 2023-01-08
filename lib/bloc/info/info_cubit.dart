part of 'info_state.dart';

class InfoCubit extends Cubit<InfoState> {
  String newsId = "";
  InfoCubit({String? id}) : super(const InfoInitialState()) {
    newsId = id!;
    viewContent(newsId);
  }

  // Logic...

  void likeContent(String id) async {
    emit(const InfoLoadingState());
    LikeNewsService.likeNews(id);
    emit(const InfoCompleteState());
  }

  void viewContent(String id) async {
    emit(const InfoLoadingState());
    ViewNewsService.viewNews(id);
    emit(const InfoCompleteState());
  }
}

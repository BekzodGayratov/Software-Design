part of 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitialState()) {
    getNews();
  }

  NewsRepository newsRepository = NewsRepository();
  void getNews() async {
    emit(const HomeLoadingState());
    await newsRepository.getNews().then((dynamic response) {
      if (response is Box<NewsData>) {
        emit(HomeCompleteState(response));
      } else {
        emit(HomeErrorState(response));
      }
    });
  }
}

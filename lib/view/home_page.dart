import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:news/bloc/home/home_state.dart';
import 'package:news/data/model/news_model.dart';
import 'package:news/view/info_page.dart';
import 'package:news/widgets/loading_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) => _scaffold(context, state));
  }

  Scaffold _scaffold(BuildContext context, HomeState state) {
    return Scaffold(
        appBar: AppBar(title: const Text("News App")),
        body: Builder(builder: (context) {
          if (state is HomeLoadingState) {
            return const Center(child: NewsLoadingWidget());
          } else if (state is HomeErrorState) {
            return Center(child: Text(state.error));
          } else {
            Box<NewsData> data = (state as HomeCompleteState).data;
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InfoPage(data: data.getAt(index)!)));
                    },
                    leading: const CircleAvatar(backgroundColor: Colors.red),
                    title: Text(data.getAt(index)!.title.toString()),
                    subtitle: Text(data.getAt(index)!.subtitle.toString()),
                    trailing:
                        Text(data.getAt(index)!.createdAt!.substring(4, 21)),
                  ),
                );
              },
              itemCount: data.length,
            );
          }
        }));
  }
}

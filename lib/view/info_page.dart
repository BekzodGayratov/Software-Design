import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/bloc/info/info_state.dart';
import 'package:news/data/model/news_model.dart';

class InfoPage extends StatelessWidget {
  final NewsData data;
  const InfoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InfoCubit(id: data.sId),
      child: BlocBuilder<InfoCubit, InfoState>(
          builder: (context, state) => _scaffold(context, state)),
    );
  }

  Scaffold _scaffold(BuildContext context, InfoState state) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Info page"),
            Row(
              children: [
                Icon(Icons.remove_red_eye_outlined),
                SizedBox(
                  width: 10,
                ),
                Text("${int.parse(data.details!.views.toString()) + 1}")
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                context.read<InfoCubit>().likeContent(data.sId!);
              },
              icon: const Icon(Icons.favorite_border))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            child: Image.network(data.img.toString(), fit: BoxFit.cover),
          ),
          Text(
            data.title.toString(),
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
          Text(
            data.subtitle.toString(),
            style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

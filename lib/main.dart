import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news/bloc/home/home_state.dart';
import 'package:news/bloc/info/info_state.dart';
import 'package:news/data/repository/news_respositor.dart';
import 'package:news/view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  NewsRepository().registerAdapters();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => HomeCubit()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

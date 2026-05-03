import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/services/news_service.dart';

void main() {
    NewsService( dio: Dio()).getGeneralNews(category: "world");

  runApp(const NewsPaper());
}

class NewsPaper extends StatelessWidget {
  const NewsPaper({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

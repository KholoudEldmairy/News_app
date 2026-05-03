import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Widgets/errorMessage.dart';
import 'package:news_app/Widgets/loadIndicator.dart';
import 'package:news_app/Widgets/postSilverView.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';

class newsListViewBuilder extends StatefulWidget {
  @override
    final String category;

  const newsListViewBuilder({super.key, required this.category});

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(dio: Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<articleModel>>(
        future:
            future, //NewsService(dio: Dio()).getGeneralNews(),//لما اغير مكان request من هنا لفوق كدة انا بعمل trigger مرة واحدة   ولما يكون api paied بيوفر عليا
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Postsilverview(
                // هحط علامة التعجب وانا مطمن لان انا متاكد ان مش هيجيلي null
                articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return ErrorMessage(
                Message: "Oop, There is a Problem , Try Later.");
          } else {
            return LoadIndicator();
          }
        });
  }
}

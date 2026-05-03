import 'package:flutter/material.dart';
import 'package:news_app/Widgets/catecory_post.dart';
import 'package:news_app/models/article_model.dart';

class Postsilverview extends StatelessWidget {
  final List<articleModel> articles;

  const Postsilverview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
            (context, index) {
      return post(instance: articles[index]);
    }));
  }
}

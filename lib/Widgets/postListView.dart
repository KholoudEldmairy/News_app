import 'package:flutter/material.dart';
import 'package:news_app/Widgets/catecory_post.dart';
import 'package:news_app/models/article_model.dart';

class postListView extends StatelessWidget {
  postListView({super.key});
 final List<articleModel> postsList=[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
        itemCount: postsList.length,
        itemBuilder: (context, index) {
          return post(instance: postsList[index],);
        });
  }
}

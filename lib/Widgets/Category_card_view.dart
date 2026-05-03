import 'package:flutter/material.dart';
import 'package:news_app/Widgets/newsListViewBuilder.dart';

class CatrgoryCardView extends StatelessWidget {
  const CatrgoryCardView({super.key,required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(category:category ,),
        ],
      ),


    );
  }
}
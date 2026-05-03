import 'package:flutter/material.dart';
import 'package:news_app/Widgets/cardListView.dart';
import 'package:news_app/Widgets/newsListViewBuilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: "News", style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: "Cloud", style: TextStyle(color: Colors.amber))
                  ]),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child:cardListView()),
              SliverToBoxAdapter(child:SizedBox(height: 32,)),
              newsListViewBuilder(category: "world",)

            ],
          )
        )  



      );
  }
}


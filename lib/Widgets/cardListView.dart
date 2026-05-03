import 'package:flutter/material.dart';
import 'package:news_app/Widgets/catgory_card.dart';
import 'package:news_app/models/card_Model.dart';

class cardListView extends StatelessWidget {
  cardListView({
    super.key,
  });
final  List<cardModel> cardsList = [
    cardModel(image: "assets/OIP (2).jpeg", CardName: "world"),
    cardModel(image: "assets/OIP.jpeg", CardName: "sports"),
    cardModel(image: "assets/OIP (1).jpeg", CardName: "business"),
    cardModel(image: "assets/technology.jpeg", CardName: "technology"),
    cardModel(image: "assets/entertaiment.avif", CardName: "entertainment"),
    cardModel(image: "assets/health.avif", CardName: "health"),
    cardModel(image: "assets/science.avif", CardName: "science"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cardsList.length,
        itemBuilder: (context, index) {
          return card(instance: cardsList[index]);
        },
      ),
    );
  }
}

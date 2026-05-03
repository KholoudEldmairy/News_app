import 'package:flutter/material.dart';
import 'package:news_app/Widgets/Category_card_view.dart';
import 'package:news_app/models/card_Model.dart';

class card extends StatelessWidget {
  const card({super.key, required this.instance});
  final cardModel instance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CatrgoryCardView(category: instance.CardName,);
              },
            ),
          );
        },
        child: Container(
            height: 85,
            width: 165,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(instance.image)),
                borderRadius: BorderRadius.circular(12)),
            child: Center(
                child: Text(
              instance.CardName,
              style: TextStyle(color: Colors.white),
            ))),
      ),
    );
  }
}

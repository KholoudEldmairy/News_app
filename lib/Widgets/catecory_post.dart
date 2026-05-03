import 'package:flutter/material.dart';
import 'package:news_app/Widgets/web_view_page.dart';
import 'package:news_app/models/article_model.dart';

class post extends StatelessWidget {
  const post({
    super.key,
    required this.instance,
  });
  final articleModel instance;
  @override
  Widget build(BuildContext context) {
    final hasImage =
        instance.image != null && instance.image!.trim().isNotEmpty;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return WebViewPage(url:  instance.url??  " لا يوجد تفاصيل في الوقت الحالي", 
                              instance: instance );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (hasImage)
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  instance.image!,
                  height: 190,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 190,
                      color: Colors.grey[300],
                      alignment: Alignment.center,
                      child: const Icon(Icons.image_not_supported),
                    );
                  },
                ),
              ),
            SizedBox(
              height: 12,
            ),
            Text(
              instance.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              instance.descreption ?? "No descreption",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news/model/articleModel.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              articleModel.image ??"",
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset("assets/notfound.png"); // Use an appropriate fallback
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
           articleModel.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articleModel.subTitle??"",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

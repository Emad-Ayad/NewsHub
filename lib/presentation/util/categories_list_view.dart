import 'package:flutter/material.dart';
import 'package:news/model/categories_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoriesModel> categories= const[
    CategoriesModel(image: "assets/business.jpeg", categoryName: "Business"),
    CategoriesModel(image: "assets/entertainment.jpg", categoryName: "Entertainment"),
    CategoriesModel(image: "assets/techno.jpg", categoryName: "Technology"),
    CategoriesModel(image: "assets/mineiro.jpeg", categoryName: "Sports"),
    CategoriesModel(image: "assets/health.png", categoryName: "Health"),
    CategoriesModel(image: "assets/general.avif", categoryName: "General"),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount:categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return CategoryCard(category: categories[index]);
          }
      ),
    );
  }
}

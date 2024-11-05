import 'package:flutter/material.dart';
import 'package:news/model/categories_model.dart';
import 'package:news/presentation/Screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoriesModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return CategoryView(category: category.categoryName,);
              },
            ),
          );
        },
        child: Container(
          height: 80,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

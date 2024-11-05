import 'package:flutter/material.dart';
import 'package:news/presentation/util/categories_list_view.dart';
import 'package:news/presentation/util/news_list_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            Text(
              "Hub",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
              child: SizedBox(height: 16),
            ),
            NewsListBuilder(category: 'general',),
          ],
        ),
      ),
    );
  }
}

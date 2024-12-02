import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView(
      {super.key, required this.category, required this.textBar});
  final String textBar;
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 247, 247),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          textBar,
          style: const TextStyle(
              fontFamily: 'Playfair Display',
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.orange),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}

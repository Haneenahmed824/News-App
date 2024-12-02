import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/card_category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<Category> categoryList = const [
    Category('assets/business.jpg', 'Business'),
    Category('assets/entertainment.jpg', 'Entertainment'),
    Category('assets/science.jpg', 'Science'),
    Category('assets/sports.jpg', 'Sports'),
    Category('assets/health.jpg', 'Health'),
    Category('assets/technology.jpg', 'Technology'),
    Category('assets/general.jpg', 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return CardCategory(categoryC: categoryList[index],);
          }),
    );
  }
}

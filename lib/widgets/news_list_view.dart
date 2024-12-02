
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_category.dart';

class News_List_View extends StatelessWidget {
  final List<ArticleModel> articles;
  const News_List_View({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: News(
          articleModel: articles[index]
        ),
      );
    }));
  }
}

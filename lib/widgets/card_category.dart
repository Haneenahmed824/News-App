import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key, required this.categoryC});
  final Category categoryC;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CategoryView(category: categoryC.text,textBar: categoryC.text,);
          }));
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Container(
            height: 120,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(categoryC.image), fit: BoxFit.fill)),
            child: Center(
                child: Text(
              categoryC.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  ),
            )),
          ),
        ),
      ),
    );
  }
}

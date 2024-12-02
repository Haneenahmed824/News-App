import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final articleUrl = articleModel.url;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => WebViewScreen(url: articleUrl)),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                articleModel.image ?? '',
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    'assets/news-2444778_1280.webp',
                    fit: BoxFit.cover,
                  );
                },
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Playfair Display'),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Color.fromARGB(255, 100, 100, 100),fontSize: 15,fontFamily: 'Playfair Display'),
          )
        ],
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  final String? url;

  const WebViewScreen({required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "News Details",
        style: TextStyle(
            fontFamily: 'Playfair Display', fontWeight: FontWeight.bold),
      )),
      body: url != null && url!.isNotEmpty
          ? InAppWebView(
              initialUrlRequest: URLRequest(
              url: WebUri.uri(
                Uri.parse(url!),
              ),
            ))
          : const Center(
              child: Text(
                "Invalid URL. Unable to load the content.",
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
    );
  }
}
